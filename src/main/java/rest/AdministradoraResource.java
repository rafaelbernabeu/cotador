package rest;

import entities.Administradora;
import entities.Operadora;
import entities.Tabela;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IAdministradoraResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.Collection;
import java.util.List;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.ADMINISTRADORA;
import static java.util.Objects.nonNull;
import static java.util.stream.Collectors.toSet;
import static service.UsuarioService.*;

@Path("/api/administradoras")
public class AdministradoraResource {

    @Inject
    AuditoriaService auditoriaService;

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
    @RolesAllowed({ADMIN, OPERADOR})
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
    @RolesAllowed({ADMIN, VENDEDOR, OPERADOR})
    @Produces("application/json")
    public List<Administradora> list() {
        return Administradora.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Administradora add(Administradora administradora) {
        return auditoriaService.salvarAlteracao(
                administradoraResource.add(administradora),
                ADMINISTRADORA, INCLUSAO);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Administradora update(@PathParam("id") Long id, Administradora administradora) {
        return auditoriaService.salvarAlteracao(
                administradoraResource.update(id, administradora),
                ADMINISTRADORA, EDICAO);
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, ADMINISTRADORA);
        return administradoraResource.delete(id);
    }

}
