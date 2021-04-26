package rest;

import entities.AuditoriaAlteracao;
import entities.AuditoriaCotacao;
import entities.AuditoriaLogin;
import io.quarkus.panache.common.Sort;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.List;

import static service.UsuarioService.ADMIN;

@Path("/api/auditoria")
public class AuditoriaResource {

    @GET
    @GZIP
    @Path("/login")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaLogin> getHistoricoLogins() {
        return AuditoriaLogin.listAll(Sort.descending("id"));
    }

    @GET
    @GZIP
    @Path("/cotacao")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaCotacao> getHistoricoCotacoes() {
        return AuditoriaCotacao.listAll();
    }

    @GET
    @GZIP
    @Path("/alteracao")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaAlteracao> getHistoricoAlteracoes() {
        return AuditoriaAlteracao.listAll();
    }

}
