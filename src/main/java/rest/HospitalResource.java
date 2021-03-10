package rest;

import entities.Hospital;
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

@Path("/api/hospitais")
public class HospitalResource {

    @Inject
    IHospitalResource hospitalResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Hospital get(@PathParam("id") Long id) {
        return hospitalResource.get(id);
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Hospital> list() {
        return Hospital.listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Hospital add(Hospital hospital) {
        return hospitalResource.add(hospital);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Hospital update(@PathParam("id") Long id, Hospital hospital) {
        return hospitalResource.update(id, hospital);
    }

    @DELETE
    @Path("{id}")
    @Transactional
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return hospitalResource.delete(id);
    }

}
