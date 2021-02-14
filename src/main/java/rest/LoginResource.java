package rest;

import entities.Role;
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
import java.time.Duration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.stream.Collectors;

import static java.time.temporal.ChronoUnit.HOURS;
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
                .groups(new HashSet<>(usuario.getRoles().stream().map(Role::getRole).collect(Collectors.toList())))
                .claim(Claims.email.name(), userPrincipal.getName())
                .expiresIn(Duration.of(8, HOURS))
                .sign());
        return Response.ok(response).build();
    }
}
