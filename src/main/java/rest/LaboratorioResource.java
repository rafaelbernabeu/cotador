package rest;

import entities.Laboratorio;
import rest.interfaces.ILaboratorioResource;

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

@Path("/api/laboratorios")
public class LaboratorioResource {

    @Inject
    ILaboratorioResource laboratorioResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Laboratorio get(@PathParam("id") Long id) {
        return laboratorioResource.get(id);
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Laboratorio> list() {
        return Laboratorio.<Laboratorio>listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Laboratorio add(Laboratorio laboratorio) {
        return laboratorioResource.add(laboratorio);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Laboratorio update(@PathParam("id") Long id, Laboratorio laboratorio) {
        return laboratorioResource.update(id, laboratorio);
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return laboratorioResource.delete(id);
    }

}
