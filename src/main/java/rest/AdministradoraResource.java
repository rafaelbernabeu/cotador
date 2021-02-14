package rest;

import entities.Administradora;
import rest.interfaces.IAdministradoraResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

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
