package rest;

import dto.Cotacao;
import service.CotacaoService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/api/cotacao")
public class CotacaoResource {

    @Inject
    CotacaoService cotacaoService;

    @POST
    @RolesAllowed({"user", "admin"})
    @Produces(MediaType.TEXT_PLAIN)
    public String geraCotacao(Cotacao cotacao) {
        return "public";
    }

}
