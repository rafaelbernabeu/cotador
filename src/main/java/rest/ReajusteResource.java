package rest;

import entities.enums.Reajuste;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.toList;

@Path("/api/reajustes")
public class ReajusteResource {

    @GET
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<String> getReajustes() {
        return Arrays.stream(Reajuste.values()).map(Reajuste::getNome).collect(toList());
    }

}
