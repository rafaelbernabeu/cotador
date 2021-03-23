package rest;

import entities.AuditoriaLogin;
import entities.Role;
import entities.Usuario;
import io.smallrye.jwt.build.Jwt;
import io.vertx.core.http.HttpServerRequest;
import org.eclipse.microprofile.jwt.JsonWebToken;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import java.security.Principal;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.stream.Collectors;

import static java.time.temporal.ChronoUnit.HOURS;
import static javax.ws.rs.core.MediaType.APPLICATION_JSON;
import static javax.ws.rs.core.MediaType.TEXT_PLAIN;

@RequestScoped
@Path("/api/login")
public class LoginResource {

    @Inject
    JsonWebToken jwt;

    @GET
    @Transactional
    @Produces(APPLICATION_JSON)
    public Response login(@Context SecurityContext securityContext, @Context HttpServerRequest request) {
        Principal userPrincipal = securityContext.getUserPrincipal();
        if (userPrincipal == null) {
            return Response.status(Response.Status.UNAUTHORIZED).build();
        }
        Usuario usuario = Usuario.find("email", userPrincipal.getName()).firstResult();
        Map<String, String> response = new HashMap<>();
        response.put("token", Jwt.issuer("http://localhost/issuer")
                .upn(usuario.getEmail())
                .subject(usuario.getNome())
                .groups(new HashSet<>(usuario.getRoles().stream().map(Role::getRole).collect(Collectors.toList())))
                .issuedAt(Instant.now())
                .expiresIn(Duration.of(24, HOURS))
                .sign());

        String ipRemoto = request.getHeader("X-Forwarded-For");
        AuditoriaLogin.builder()
                .usuario(usuario.getEmail())
                .dataHora(LocalDateTime.now())
                .ip(ipRemoto == null ? request.remoteAddress().toString() : ipRemoto)
                .userAgent(request.getHeader("user-agent"))
                .build().persist();

        return Response.ok(response).build();
    }

    @GET
    @Path("/verify")
    @Produces(TEXT_PLAIN)
    public Response tokenTest(@Context SecurityContext securityContext) {
        Principal userPrincipal = securityContext.getUserPrincipal();

        if (userPrincipal == null ||
                jwt.getExpirationTime() * 1000 < System.currentTimeMillis() ||
                !userPrincipal.getName().equals(jwt.getName())) {
            return Response.status(Response.Status.UNAUTHORIZED).build();
        }

        String response = String.format("Hello %s, isHttps: %s, AuthScheme: %s, hasJWT: %s",
                userPrincipal.getName(), securityContext.isSecure(), securityContext.getAuthenticationScheme(), hasJwt());

        return Response.ok(response).build();
    }

    private boolean hasJwt() {
        return jwt.getClaimNames() != null;
    }

}
