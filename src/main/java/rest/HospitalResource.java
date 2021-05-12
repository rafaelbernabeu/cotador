package rest;

import entities.Hospital;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IHospitalResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.HOSPITAL;
import static service.UsuarioService.*;

@Path("/api/hospitais")
public class HospitalResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    IHospitalResource hospitalResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Hospital get(@PathParam("id") Long id) {
        return hospitalResource.get(id);
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN, VENDEDOR, OPERADOR})
    @Produces("application/json")
    public List<Hospital> list() {
        return Hospital.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Hospital add(Hospital hospital) {
        return auditoriaService.salvarAlteracao(
                hospitalResource.add(hospital),
                HOSPITAL, INCLUSAO);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Hospital update(@PathParam("id") Long id, Hospital hospital) {
        return auditoriaService.salvarAlteracao(
                hospitalResource.update(id, hospital),
                HOSPITAL, EDICAO);
    }

    @DELETE
    @GZIP
    @Path("{id}")
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, HOSPITAL);
        return hospitalResource.delete(id);
    }

}
