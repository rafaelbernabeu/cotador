package rest;

import dto.SolicitacaoCotacaoDTO;
import entities.Tabela;
import service.CotacaoService;

import javax.annotation.security.PermitAll;
import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/api/cotacoes")
public class CotacaoResource {

    @Inject
    CotacaoService cotacaoService;

    @POST
//    @RolesAllowed({"user", "admin"})
    @PermitAll
    @Produces(MediaType.APPLICATION_JSON)
    public List<Tabela> geraCotacao(SolicitacaoCotacaoDTO cotacao) {
        return cotacaoService.geraCotacao(cotacao);
    }

}
