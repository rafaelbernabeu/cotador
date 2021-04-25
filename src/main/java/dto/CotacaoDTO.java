package dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
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
    private List<Long> opcoesOcultas;

    @JsonIgnore
    public Optional<EstadoDTO> getEstadoOptional() {
        return Optional.ofNullable(estado);
    }

    @JsonIgnore
    public Optional<String> getCategoriaOptional() {
        return Optional.ofNullable(categoria);
    }

    @JsonIgnore
    public Optional<String> getAcomodacaoOptional() {
        return Optional.ofNullable(acomodacao);
    }

    @JsonIgnore
    public Optional<String> getTipoAdesaoOptional() {
        return Optional.ofNullable(tipoAdesao);
    }

    @JsonIgnore
    public Optional<String> getCoparticipacaoOptional() {
        return Optional.ofNullable(coparticipacao);
    }

    @JsonIgnore
    public Optional<List<Integer>> getTitularesOptional() {
        return Optional.ofNullable(titulares);
    }

    @JsonIgnore
    public Optional<List<Integer>> getDependentesOptional() {
        return Optional.ofNullable(dependentes);
    }

    @JsonIgnore
    public Optional<List<Operadora>> getOperadorasOptional() {
        return Optional.ofNullable(operadoras);
    }

    @JsonIgnore
    public Optional<List<Profissao>> getProfissoesOptional() {
        return Optional.ofNullable(profissoes);
    }

    @JsonIgnore
    public Optional<List<Administradora>> getAdministradorasOptional() {
        return Optional.ofNullable(administradoras);
    }
}
