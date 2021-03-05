package rest;

import dto.CotacaoDTO;
import dto.OpcaoDTO;
import rest.interfaces.ICotacaoResource;
import service.CotacaoService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import java.util.List;

@Path("/api/cotacoes")
public class CotacaoResource {

    @Inject
    ICotacaoResource cotacaoResource;

    @Inject
    CotacaoService cotacaoService;

    @POST
    @RolesAllowed({"user", "admin"})
    @Produces(MediaType.APPLICATION_JSON)
    public List<OpcaoDTO> geraCotacao(CotacaoDTO cotacao) {
        return cotacaoService.geraCotacao(cotacao);
    }

}
