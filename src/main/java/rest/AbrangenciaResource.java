package rest;

import entities.enums.Abrangencia;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.toList;

@Path("/api/abrangencias")
public class AbrangenciaResource {

    @GET
    @GZIP
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<String> getAbrangencias() {
        return Arrays.stream(Abrangencia.values()).map(Abrangencia::getNome).collect(toList());
    }

}
