package rest;

import dto.GeolocationDTO;
import entities.Role;
import entities.Usuario;
import io.smallrye.jwt.build.Jwt;
import io.vertx.core.http.HttpServerRequest;
import org.eclipse.microprofile.jwt.JsonWebToken;
import org.jboss.resteasy.annotations.GZIP;
import service.AuditoriaService;
import service.UsuarioService;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.SecurityContext;
import java.security.Principal;
import java.time.Duration;
import java.time.Instant;
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

    @Inject
    UsuarioService usuarioService;

    @Inject
    AuditoriaService auditoriaService;

    @POST
    @GZIP
    @Transactional
    @Produces(APPLICATION_JSON)
    public Response login(GeolocationDTO geolocation, @Context SecurityContext securityContext, @Context HttpServerRequest request) {
        Principal userPrincipal = securityContext.getUserPrincipal();
        if (userPrincipal == null) {
            return Response.status(Response.Status.UNAUTHORIZED).build();
        }

        Usuario usuario = usuarioService.findUsuarioByEmail(userPrincipal.getName());
        Map<String, String> response = new HashMap<>();
        response.put("token", Jwt.issuer("http://localhost/issuer")
                .upn(usuario.getEmail())
                .subject(usuario.getNome())
                .groups(new HashSet<>(usuario.getRoles().stream().map(Role::getRole).collect(Collectors.toList())))
                .issuedAt(Instant.now())
                .expiresIn(Duration.of(24, HOURS))
                .sign());

        auditoriaService.salvarLogin(request, geolocation, usuario);

        return Response.ok(response).build();
    }

    @GET
    @GZIP
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
