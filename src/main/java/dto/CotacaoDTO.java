package dto;

import entities.Profissao;
import lombok.Data;

import java.util.List;

@Data
public class CotacaoDTO {

    private int qtdVidas0a18Anos;
    private int qtdVidas19a23Anos;
    private int qtdVidas24aa28Anos;
    private int qtdVidas29a33Anos;
    private int qtdVidas34a38Anos;
    private int qtdVidas39a43Anos;
    private int qtdVidas44a48Anos;
    private int qtdVidas49a53Anos;
    private int qtdVidas54a58Anos;
    private int qtdVidas59ouMaisAnos;

    private String categoria;
    private String acomodacao;
    private Boolean coparticipacao;
    private EstadoDTO estado;
    private List<Profissao> profissoes;

}
