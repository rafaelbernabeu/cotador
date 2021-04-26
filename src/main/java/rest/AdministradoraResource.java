package rest;

import entities.Administradora;
import entities.Operadora;
import entities.Tabela;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IAdministradoraResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import java.util.Collection;
import java.util.List;

import static java.util.Objects.nonNull;
import static java.util.stream.Collectors.toSet;
import static service.UsuarioService.ADMIN;

@Path("/api/administradoras")
public class AdministradoraResource {

    @Inject
    IAdministradoraResource administradoraResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Administradora get(@PathParam("id") Long id) {
        return administradoraResource.get(id);
    }

    @GET
    @GZIP
    @Path("{id}/operadoras")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Collection<Operadora> getOperadorasByAdministradoraAndEstadoAndCategoria(
            @PathParam("id") Long idAdministradora,
            @QueryParam("estado") String siglaEstado,
            @QueryParam("categoria") String categoria) {

        return Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(siglaEstado))
                .filter(t -> nonNull(t.getAdministradora()) && t.getAdministradora().getId().equals(idAdministradora))
                .map(Tabela::getOperadora)
                .collect(toSet());
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<Administradora> list() {
        return Administradora.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public Administradora add(Administradora administradora) {
        return administradoraResource.add(administradora);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public Administradora update(@PathParam("id") Long id, Administradora administradora) {
        return administradoraResource.update(id, administradora);
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    public boolean delete(@PathParam("id") Long id) {
        return administradoraResource.delete(id);
    }

}
