package rest;

import dto.Cotacao;
import dto.SolicitacaoCotacao;
import service.CotacaoService;

import javax.annotation.security.PermitAll;
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
//    @RolesAllowed({"user", "admin"})
    @PermitAll
    @Produces(MediaType.TEXT_PLAIN)
    public Cotacao geraCotacao(SolicitacaoCotacao cotacao) {
        return cotacaoService.geraCotacao(cotacao);
    }

}
