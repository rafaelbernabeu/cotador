package dto;

import entities.Administradora;
import entities.Operadora;
import entities.Profissao;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Optional;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class CotacaoDTO {

    private Long id;
    private Boolean mei;
    private String categoria;
    private String acomodacao;
    private String tipoAdesao;
    private String coparticipacao;

    private EstadoDTO estado;
    private List<Integer> titulares;
    private List<Integer> dependentes;
    private List<Operadora> operadoras;
    private List<Profissao> profissoes;
    private List<Administradora> administradoras;

    private List<OpcaoDTO> opcoes;

    public Optional<EstadoDTO> getEstadoOptional() {
        return Optional.ofNullable(estado);
    }

    public Optional<String> getCategoriaOptional() {
        return Optional.ofNullable(categoria);
    }

    public Optional<String> getAcomodacaoOptional() {
        return Optional.ofNullable(acomodacao);
    }

    public Optional<String> getTipoAdesaoOptional() {
        return Optional.ofNullable(tipoAdesao);
    }

    public Optional<String> getCoparticipacaoOptional() {
        return Optional.ofNullable(coparticipacao);
    }

    public Optional<List<Integer>> getTitularesOptional() {
        return Optional.ofNullable(titulares);
    }

    public Optional<List<Integer>> getDependentesOptional() {
        return Optional.ofNullable(dependentes);
    }

    public Optional<List<Operadora>> getOperadorasOptional() {
        return Optional.ofNullable(operadoras);
    }

    public Optional<List<Profissao>> getProfissoesOptional() {
        return Optional.ofNullable(profissoes);
    }

    public Optional<List<Administradora>> getAdministradorasOptional() {
        return Optional.ofNullable(administradoras);
    }
}
