package rest;

import dto.CotacaoDTO;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.ICotacaoResource;
import service.CotacaoService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/api/cotacoes")
public class CotacaoResource {

    @Inject
    ICotacaoResource cotacaoResource;

    @Inject
    CotacaoService cotacaoService;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({"user", "admin"})
    @Produces(MediaType.APPLICATION_JSON)
    public CotacaoDTO recuperaCotacao(@PathParam("id") Long id) {
        return cotacaoService.recuperaCotacao(id);
    }

    @POST
    @GZIP
    @RolesAllowed({"user", "admin"})
    @Produces(MediaType.APPLICATION_JSON)
    public CotacaoDTO geraCotacao(CotacaoDTO cotacao) {
        return cotacaoService.geraCotacao(cotacao);
    }

}
