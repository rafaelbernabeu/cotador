package service;

import dto.CotacaoDTO;
import dto.GeolocationDTO;
import entities.AuditoriaCotacao;
import entities.AuditoriaLogin;
import entities.Usuario;
import io.quarkus.security.identity.SecurityIdentity;
import io.vertx.core.http.HttpServerRequest;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.time.LocalDateTime;
import java.time.ZoneId;

@ApplicationScoped
public class AuditoriaService {

    @Inject
    SecurityIdentity securityIdentity;

    @Inject
    UsuarioService usuarioService;

    public AuditoriaCotacao salvarCotacao(CotacaoDTO cotacao) {
        Usuario usuario = usuarioService.findUsuarioByEmail(securityIdentity.getPrincipal().getName());
        AuditoriaCotacao auditoriaCotacao = new AuditoriaCotacao(cotacao, usuario);
        auditoriaCotacao.persist();
        return auditoriaCotacao;
    }

    public void salvarLogin(HttpServerRequest request, GeolocationDTO geolocation, Usuario usuario) {
        String ipRemoto = request.getHeader("X-Forwarded-For");

        AuditoriaLogin.builder()
                .usuario(usuario.getEmail())
                .dataHora(LocalDateTime.now(ZoneId.of("America/Sao_Paulo")))
                .latitude(geolocation.getLatitude())
                .longitude(geolocation.getLongitude())
                .userAgent(request.getHeader("user-agent"))
                .ip(ipRemoto == null ? request.remoteAddress().toString() : ipRemoto)
                .build().persist();
    }

}
