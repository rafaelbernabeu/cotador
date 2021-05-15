package service;

import dto.ConsultaAuditoriaDTO;
import dto.CotacaoDTO;
import dto.GeolocationDTO;
import entities.*;
import entities.enums.TipoAlteracao;
import entities.enums.TipoEntidade;
import io.quarkus.panache.common.Sort;
import io.vertx.core.http.HttpServerRequest;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.time.LocalDateTime;
import java.util.List;

import static entities.enums.TipoAlteracao.EXCLUSAO;

@ApplicationScoped
public class AuditoriaService {

    private static final int N_23 = 23;
    private static final int N_59 = 59;
    private static final int N_999999 = 999999;
    private static final String DATA_HORA = "dataHora";
    private static final String QUERY_BETWEEN_DATA_HORA = "dataHora BETWEEN ?1 AND ?2";

    @Inject
    SegurancaService segurancaService;

    @Inject
    DateTimeService dateTimeService;

    public AuditoriaCotacao salvarCotacao(CotacaoDTO cotacao) {
        AuditoriaCotacao auditoriaCotacao = new AuditoriaCotacao(cotacao, segurancaService.getEmailUsuarioLogado(), dateTimeService.getDataHoraAtual());
        auditoriaCotacao.persist();
        return auditoriaCotacao;
    }

    public void salvarLogin(HttpServerRequest request, GeolocationDTO geolocation, Usuario usuario) {
        String ipRemoto = request.getHeader("X-Forwarded-For");

        AuditoriaLogin.builder()
                .usuario(usuario.getEmail())
                .dataHora(dateTimeService.getDataHoraAtual())
                .latitude(geolocation.getLatitude())
                .longitude(geolocation.getLongitude())
                .userAgent(request.getHeader("user-agent"))
                .ip(ipRemoto == null ? request.remoteAddress().toString() : ipRemoto)
                .build().persist();
    }

    public <T> T salvarAlteracao(IEntidade<T> entidade, TipoEntidade tipoEntidade, TipoAlteracao tipoAlteracao) {
        createAuditoriaAlteracao(tipoEntidade, tipoAlteracao)
                .idEntidade(entidade.getId())
                .build().persist();

        return (T) entidade;
    }

    public Long salvarExclusao(Long idEntidade, TipoEntidade tipoEntidade) {
        createAuditoriaAlteracao(tipoEntidade, EXCLUSAO)
                .idEntidade(idEntidade)
                .build().persist();

        return idEntidade;
    }

    private AuditoriaAlteracao.AuditoriaAlteracaoBuilder createAuditoriaAlteracao(TipoEntidade tipoEntidade, TipoAlteracao tipoAlteracao) {
        return AuditoriaAlteracao.builder()
                .tipoEntidade(tipoEntidade)
                .tipoAlteracao(tipoAlteracao)
                .dataHora(dateTimeService.getDataHoraAtual())
                .usuario(segurancaService.getEmailUsuarioLogado());
    }

    public List<AuditoriaLogin> getHistoricoLogins(ConsultaAuditoriaDTO consultaAuditoria) {
        return AuditoriaLogin.find(QUERY_BETWEEN_DATA_HORA, Sort.descending(DATA_HORA),
                getDataNoUltimoSegundoDoDia(consultaAuditoria.getDataInicio()),
                getDataNoUltimoSegundoDoDia(consultaAuditoria.getDataFim()))
                .list();
    }

    public List<AuditoriaCotacao> getHistoricoCotacoes(ConsultaAuditoriaDTO consultaAuditoria) {
        return AuditoriaCotacao.find(QUERY_BETWEEN_DATA_HORA, Sort.descending(DATA_HORA),
                getDataNoUltimoSegundoDoDia(consultaAuditoria.getDataInicio()),
                getDataNoUltimoSegundoDoDia(consultaAuditoria.getDataFim()))
                .list();
    }

    public List<AuditoriaAlteracao> getHistoricoAlteracoes(ConsultaAuditoriaDTO consultaAuditoria) {
        return AuditoriaAlteracao.find(QUERY_BETWEEN_DATA_HORA, Sort.descending(DATA_HORA),
                getDataNoUltimoSegundoDoDia(consultaAuditoria.getDataInicio()),
                getDataNoUltimoSegundoDoDia(consultaAuditoria.getDataFim()))
                .list();
    }

    private LocalDateTime getDataNoUltimoSegundoDoDia(LocalDateTime dataInicio) {
        return dataInicio.withHour(N_23).withMinute(N_59).withSecond(N_59).withNano(N_999999);
    }

}
