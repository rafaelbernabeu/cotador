package rest;

import entities.Role;
import rest.interfaces.IRoleResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.*;
import java.util.List;

@Path("/api/roles")
public class RoleResource {

    @Inject
    IRoleResource roleResource;

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Role> listAll() {
        return Role.listAll();
    }
}
