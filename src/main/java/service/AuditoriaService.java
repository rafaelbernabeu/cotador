package service;

import dto.CotacaoDTO;
import dto.GeolocationDTO;
import entities.*;
import entities.enums.TipoAlteracao;
import entities.enums.TipoEntidade;
import io.vertx.core.http.HttpServerRequest;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

import static entities.enums.TipoAlteracao.EXCLUSAO;

@ApplicationScoped
public class AuditoriaService {

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

}
