package rest;

import dto.CotacaoDTO;
import dto.SolicitacaoCotacaoDTO;
import service.CotacaoService;

import javax.annotation.security.PermitAll;
import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/api/cotacoes")
public class CotacaoResource {

    @Inject
    CotacaoService cotacaoService;

    @POST
//    @RolesAllowed({"user", "admin"})
    @PermitAll
    @Produces(MediaType.APPLICATION_JSON)
    public CotacaoDTO geraCotacao(SolicitacaoCotacaoDTO cotacao) {
        return cotacaoService.geraCotacao(cotacao);
    }

}
