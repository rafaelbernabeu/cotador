package rest;

import entities.enums.Reajuste;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.toList;
import static service.UsuarioService.ADMIN;

@Path("/api/reajustes")
public class ReajusteResource {

    @GET
    @GZIP
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<String> getReajustes() {
        return Arrays.stream(Reajuste.values()).map(Reajuste::getNome).collect(toList());
    }

}
