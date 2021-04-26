package rest;

import entities.enums.Adesao;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.toList;
import static service.UsuarioService.ADMIN;

@Path("/api/adesoes")
public class AdesaoResource {

    @GET
    @GZIP
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<String> getAdesoes() {
        return Arrays.stream(Adesao.values()).map(Adesao::getNome).collect(toList());
    }

}
