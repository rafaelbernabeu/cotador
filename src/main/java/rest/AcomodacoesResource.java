package rest;

import entities.enums.Acomodacao;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.toList;
import static service.UsuarioService.ADMIN;
import static service.UsuarioService.VENDEDOR;

@Path("/api/acomodacoes")
public class AcomodacoesResource {

    @GET
    @GZIP
    @RolesAllowed({ADMIN, VENDEDOR})
    @Produces("application/json")
    public List<String> getAcomodacoes() {
        return Arrays.stream(Acomodacao.values()).map(Acomodacao::getNome).collect(toList());
    }

}
