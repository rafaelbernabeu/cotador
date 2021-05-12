package rest;

import entities.Profissao;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IProfissaoResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.PROFISSAO;
import static service.UsuarioService.*;

@Path("/api/profissoes")
public class ProfissaoResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    IProfissaoResource profissaoResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Profissao get(@PathParam("id") Long id) {
        return profissaoResource.get(id);
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN, VENDEDOR, OPERADOR, POS_VENDAS})
    @Produces("application/json")
    public List<Profissao> list() {
        return Profissao.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR, POS_VENDAS})
    @Consumes("application/json")
    @Produces("application/json")
    public Profissao add(Profissao profissao) {
        return auditoriaService.salvarAlteracao(
                profissaoResource.add(profissao),
                PROFISSAO, INCLUSAO);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR, POS_VENDAS})
    @Consumes("application/json")
    @Produces("application/json")
    public Profissao update(@PathParam("id") Long id, Profissao profissao) {
        return auditoriaService.salvarAlteracao(
                profissaoResource.update(id, profissao),
                PROFISSAO, EDICAO);
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR, POS_VENDAS})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, PROFISSAO);
        return profissaoResource.delete(id);
    }

}
