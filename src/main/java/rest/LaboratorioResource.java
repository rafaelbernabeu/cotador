package rest;

import entities.Laboratorio;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.ILaboratorioResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.LABORATORIO;
import static service.UsuarioService.ADMIN;
import static service.UsuarioService.OPERADOR;

@Path("/api/laboratorios")
public class LaboratorioResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    ILaboratorioResource laboratorioResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Laboratorio get(@PathParam("id") Long id) {
        return laboratorioResource.get(id);
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN, OPERADOR})
    @Produces("application/json")
    public List<Laboratorio> list() {
        return Laboratorio.<Laboratorio>listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Laboratorio add(Laboratorio laboratorio) {
        return auditoriaService.salvarAlteracao(
                laboratorioResource.add(laboratorio),
                LABORATORIO, INCLUSAO);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Laboratorio update(@PathParam("id") Long id, Laboratorio laboratorio) {
        return auditoriaService.salvarAlteracao(
                laboratorioResource.update(id, laboratorio),
                LABORATORIO, EDICAO);
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, LABORATORIO);
        return laboratorioResource.delete(id);
    }

}
