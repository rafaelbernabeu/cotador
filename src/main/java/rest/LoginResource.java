package rest;

import entities.Usuario;
import io.smallrye.jwt.build.Jwt;
import org.eclipse.microprofile.jwt.Claims;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import java.security.Principal;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

import static javax.ws.rs.core.MediaType.APPLICATION_JSON;

@RequestScoped
@Path("/api/login")
public class LoginResource {



    @GET
    @Produces(APPLICATION_JSON)
    public Response login(@Context SecurityContext securityContext) {
        Principal userPrincipal = securityContext.getUserPrincipal();
        if (userPrincipal == null) {
            return Response.status(Response.Status.UNAUTHORIZED).build();
        }
        Usuario usuario = Usuario.find("email", userPrincipal.getName()).firstResult();
        Map<String, String> response = new HashMap<>();
        response.put("token", Jwt.issuer("http://localhost/issuer")
                .upn(usuario.getEmail())
                .groups(new HashSet<>(usuario.getRolesAsString()))
                .claim(Claims.email.name(), userPrincipal.getName())
                .sign());
        return Response.ok(response).build();
    }



}
