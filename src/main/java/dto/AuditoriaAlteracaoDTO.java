package dto;

import entities.AuditoriaAlteracao;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class AuditoriaAlteracaoDTO {

    private Long id;
    private String usuario;
    private Long idEntidade;
    private String tipoEntidade;
    private String tipoAlteracao;
    private LocalDateTime dataHora;

    public AuditoriaAlteracaoDTO(AuditoriaAlteracao auditoriaAlteracao) {
        this.id = auditoriaAlteracao.getId();
        this.usuario = auditoriaAlteracao.getUsuario();
        this.idEntidade = auditoriaAlteracao.getIdEntidade();
        this.tipoEntidade = auditoriaAlteracao.getTipoEntidade().getNome();
        this.tipoAlteracao = auditoriaAlteracao.getTipoAlteracao().getNome();
        this.dataHora = auditoriaAlteracao.getDataHora();
    }
}
