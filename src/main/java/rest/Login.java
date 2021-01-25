package rest;

import entities.Usuario;
import io.smallrye.jwt.build.Jwt;
import org.eclipse.microprofile.jwt.Claims;
import org.eclipse.microprofile.jwt.JsonWebToken;

import javax.annotation.security.RolesAllowed;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.InternalServerErrorException;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import java.security.Principal;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

import static javax.ws.rs.core.MediaType.APPLICATION_JSON;

@RequestScoped
@Path("/api/login")
public class Login {

    @Inject
    JsonWebToken jwt;

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
                .groups(new HashSet<>(usuario.getRolesList()))
                .claim(Claims.birthdate.name(), "2001-07-13")
                .sign());
        return Response.ok(response).build();
    }

    @GET()
    @Path("/test")
    @RolesAllowed("admin")
    @Produces(MediaType.TEXT_PLAIN)
    public String tokenTest(@Context SecurityContext ctx) {
        String name;
        if (ctx.getUserPrincipal() == null) {
            name = "anonymous";
        } else if (!ctx.getUserPrincipal().getName().equals(jwt.getName())) {
            throw new InternalServerErrorException("Principal and JsonWebToken names do not match");
        } else {
            name = ctx.getUserPrincipal().getName();
        }
        return String.format("hello + %s,"
                        + " isHttps: %s,"
                        + " authScheme: %s,"
                        + " hasJWT: %s",
                name, ctx.isSecure(), ctx.getAuthenticationScheme(), hasJwt());
    }

    private boolean hasJwt() {
        return jwt.getClaimNames() != null;
    }

}
