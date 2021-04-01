package rest;

import entities.AuditoriaAlteracao;
import entities.AuditoriaCotacao;
import entities.AuditoriaLogin;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.List;

@Path("/api/auditoria")
public class AuditoriaResource {

    @GET
    @GZIP
    @Path("/login")
    @RolesAllowed({"admin"})
    @Produces("application/json")
    public List<AuditoriaLogin> getHistoricoLogins() {
        return AuditoriaLogin.listAll();
    }

    @GET
    @GZIP
    @Path("/cotacao")
    @RolesAllowed({"admin"})
    @Produces("application/json")
    public List<AuditoriaCotacao> getHistoricoCotacoes() {
        return AuditoriaCotacao.listAll();
    }

    @GET
    @GZIP
    @Path("/alteracao")
    @RolesAllowed({"admin"})
    @Produces("application/json")
    public List<AuditoriaAlteracao> getHistoricoAlteracoes() {
        return AuditoriaAlteracao.listAll();
    }

}
