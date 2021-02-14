package rest;

import entities.Operadora;
import rest.interfaces.IOperadoraResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

@Path("/api/operadoras")
public class OperadoraResource {

    @Inject
    IOperadoraResource operadoraResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Operadora get(@PathParam("id") Long id) {
        return operadoraResource.get(id);
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Operadora> list() {
        return Operadora.listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Operadora add(Operadora operadora) {
        return operadoraResource.add(operadora);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Operadora update(@PathParam("id") Long id, Operadora operadora) {
        return operadoraResource.update(id, operadora);
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return operadoraResource.delete(id);
    }

}
