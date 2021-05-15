package rest;

import dto.AuditoriaAlteracaoDTO;
import dto.ConsultaAuditoriaDTO;
import entities.AuditoriaCotacao;
import entities.AuditoriaLogin;
import org.jboss.resteasy.annotations.GZIP;
import service.AuditoriaService;
import service.CSVService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.List;

import static java.nio.charset.StandardCharsets.UTF_8;
import static java.util.stream.Collectors.toList;
import static service.CSVService.*;
import static service.UsuarioService.ADMIN;

@Path("/api/auditoria")
public class AuditoriaResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    CSVService csvService;

    @POST
    @GZIP
    @Path("/login")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaLogin> getHistoricoLogins(ConsultaAuditoriaDTO consultaAuditoria) {
        return auditoriaService.getHistoricoLogins(consultaAuditoria);
    }

    @POST
    @GZIP
    @Path("/cotacao")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaCotacao> getHistoricoCotacoes(ConsultaAuditoriaDTO consultaAuditoria) {
        return auditoriaService.getHistoricoCotacoes(consultaAuditoria);
    }

    @POST
    @GZIP
    @Path("/alteracao")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaAlteracaoDTO> getHistoricoAlteracoes(ConsultaAuditoriaDTO consultaAuditoria) {
        return auditoriaService.getHistoricoAlteracoes(consultaAuditoria).stream().map(AuditoriaAlteracaoDTO::new).collect(toList());
    }

    @POST
    @GZIP
    @Path("/login/download")
    @RolesAllowed({ADMIN})
    @Produces("text/csv")
    public byte[] getHistoricoLoginsCSV(ConsultaAuditoriaDTO consultaAuditoria) {
        return csvService.convertToCSV(CABECALHO_CSV_LOGINS, auditoriaService.getHistoricoLogins(consultaAuditoria)).getBytes(UTF_8);
    }

    @POST
    @GZIP
    @Path("/cotacao/download")
    @RolesAllowed({ADMIN})
    @Produces("text/csv")
    public byte[] getHistoricoCotacoesCSV(ConsultaAuditoriaDTO consultaAuditoria) {
        return csvService.convertToCSV(CABECALHO_CSV_COTACOES, auditoriaService.getHistoricoCotacoes(consultaAuditoria)).getBytes(UTF_8);
    }

    @POST
    @GZIP
    @Path("/alteracao/download")
    @RolesAllowed({ADMIN})
    @Produces("text/csv")
    public byte[] getHistoricoAlteracoesCSV(ConsultaAuditoriaDTO consultaAuditoria) {
        return csvService.convertToCSV(CABECALHO_CSV_ALTERACOES, auditoriaService.getHistoricoAlteracoes(consultaAuditoria)).getBytes(UTF_8);
    }

}
