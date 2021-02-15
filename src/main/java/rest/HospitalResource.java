package rest;

import entities.Hospital;
import io.quarkus.panache.common.Page;
import io.quarkus.panache.common.Sort;
import rest.interfaces.IHospitalResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
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
    public List<Hospital> list(@QueryParam("sort") @DefaultValue("id") String columnName,
                               @QueryParam("page") @DefaultValue("0") int pageIndex,
                               @QueryParam("size") @DefaultValue("20") int pageSize) {

        Sort sort = Sort.by(columnName);
        Page page = Page.of(pageIndex, pageSize);
        return hospitalResource.list(page, sort);
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
