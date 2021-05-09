package rest;

import dto.ConsultaAuditoriaDTO;
import entities.AuditoriaAlteracao;
import entities.AuditoriaCotacao;
import entities.AuditoriaLogin;
import io.quarkus.panache.common.Sort;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.List;

import static service.UsuarioService.ADMIN;

@Path("/api/auditoria")
public class AuditoriaResource {

    private static final int N_23 = 23;
    private static final int N_59 = 59;
    private static final int N_999999 = 999999;
    private static final String DATA_HORA = "dataHora";
    private static final String QUERY_BETWEEN_DATA_HORA = "dataHora BETWEEN ?1 AND ?2";

    @POST
    @GZIP
    @Path("/login")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaLogin> getHistoricoLogins(ConsultaAuditoriaDTO consultaAuditoria) {
        return AuditoriaLogin
                .find(QUERY_BETWEEN_DATA_HORA, Sort.descending(DATA_HORA),
                        consultaAuditoria.getDataInicio().withHour(N_23).withMinute(N_59).withSecond(N_59).withNano(N_999999),
                        consultaAuditoria.getDataFim().withHour(N_23).withMinute(N_59).withSecond(N_59).withNano(N_999999))
                .list();
    }

    @POST
    @GZIP
    @Path("/cotacao")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaCotacao> getHistoricoCotacoes(ConsultaAuditoriaDTO consultaAuditoria) {
        return AuditoriaCotacao
                .find(QUERY_BETWEEN_DATA_HORA, Sort.descending(DATA_HORA),
                        consultaAuditoria.getDataInicio().withHour(N_23).withMinute(N_59).withSecond(N_59).withNano(N_999999),
                        consultaAuditoria.getDataFim().withHour(N_23).withMinute(N_59).withSecond(N_59).withNano(N_999999))
                .list();
    }

    @POST
    @GZIP
    @Path("/alteracao")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<AuditoriaAlteracao> getHistoricoAlteracoes(ConsultaAuditoriaDTO consultaAuditoria) {
        return AuditoriaAlteracao
                .find(QUERY_BETWEEN_DATA_HORA, Sort.descending(DATA_HORA),
                        consultaAuditoria.getDataInicio().withHour(N_23).withMinute(N_59).withSecond(N_59).withNano(N_999999),
                        consultaAuditoria.getDataFim().withHour(N_23).withMinute(N_59).withSecond(N_59).withNano(N_999999))
                .list();
    }

}
