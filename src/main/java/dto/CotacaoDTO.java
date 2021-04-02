package dto;

import entities.Administradora;
import entities.Operadora;
import entities.Profissao;
import lombok.Data;

import java.util.List;

@Data
public class CotacaoDTO {

    private Boolean mei;
    private String categoria;
    private String acomodacao;
    private String tipoAdesao;
    private Boolean coparticipacao;

    private EstadoDTO estado;
    private List<Integer> titulares;
    private List<Integer> dependentes;
    private List<Operadora> operadoras;
    private List<Profissao> profissoes;
    private List<Administradora> administradoras;

}
