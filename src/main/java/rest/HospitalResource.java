package rest;

import entities.Hospital;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IHospitalResource;

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
import java.util.List;

import static service.UsuarioService.ADMIN;

@Path("/api/hospitais")
public class HospitalResource {

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
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<Hospital> list() {
        return Hospital.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public Hospital add(Hospital hospital) {
        return hospitalResource.add(hospital);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public Hospital update(@PathParam("id") Long id, Hospital hospital) {
        return hospitalResource.update(id, hospital);
    }

    @DELETE
    @GZIP
    @Path("{id}")
    @Transactional
    @RolesAllowed({ADMIN})
    public boolean delete(@PathParam("id") Long id) {
        return hospitalResource.delete(id);
    }

}
