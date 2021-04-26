package rest;

import entities.Role;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IRoleResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.List;

import static service.UsuarioService.ADMIN;

@Path("/api/roles")
public class RoleResource {

    @Inject
    IRoleResource roleResource;

    @GET
    @GZIP
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<Role> listAll() {
        return Role.listAll();
    }

}
