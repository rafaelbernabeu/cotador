package rest;

import entities.Entidade;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IEntidadeResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.ENTIDADE;
import static service.UsuarioService.*;

@Path("/api/entidades")
public class EntidadeResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    IEntidadeResource entidadeResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Entidade get(@PathParam("id") Long id) {
        return entidadeResource.get(id);
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN, OPERADOR, POS_VENDAS})
    @Produces("application/json")
    public List<Entidade> list() {
        return Entidade.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR, POS_VENDAS})
    @Consumes("application/json")
    @Produces("application/json")
    public Entidade add(Entidade entidade) {
        return auditoriaService.salvarAlteracao(
                entidadeResource.add(entidade),
                ENTIDADE, INCLUSAO);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR, POS_VENDAS})
    @Consumes("application/json")
    @Produces("application/json")
    public Entidade update(@PathParam("id") Long id, Entidade entidade) {
        return auditoriaService.salvarAlteracao(
                entidadeResource.update(id, entidade),
                ENTIDADE, EDICAO);
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR, POS_VENDAS})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, ENTIDADE);
        return entidadeResource.delete(id);
    }

}
