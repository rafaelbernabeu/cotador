package rest;

import entities.Administradora;
import entities.Operadora;
import entities.Tabela;
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
import java.util.List;

import static java.util.stream.Collectors.toList;

@Path("/api/administradoras")
public class AdministradoraResource {

    @Inject
    IAdministradoraResource administradoraResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Administradora get(@PathParam("id") Long id) {
        return administradoraResource.get(id);
    }

    @GET
    @Path("{id}/operadoras")
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Operadora> get(@PathParam("id") Long id,
                               @QueryParam("estado") String siglaEstado,
                               @QueryParam("categoria") String categoria,
                               @QueryParam("mei") Boolean contemplaMei) {

        return Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(siglaEstado))
                .filter(t -> t.getAdministradora().getId().equals(id))
                .filter(t -> t.getContemplaMEI().equals(contemplaMei))
                .map(Tabela::getOperadora)
                .collect(toList());
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Administradora> list() {
        return Administradora.listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Administradora add(Administradora administradora) {
        return administradoraResource.add(administradora);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Administradora update(@PathParam("id") Long id, Administradora administradora) {
        return administradoraResource.update(id, administradora);
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return administradoraResource.delete(id);
    }

}
