package dto;

import entities.enums.TipoAbrangencia;
import lombok.Data;

import java.util.List;

@Data
public class ProdutoDTO {

    private Long valor;
    private String nome;

    private Long reajuste;
    private Boolean ativo;
    private Integer idadeMinima;
    private Integer idadeMaxima;
    private Integer qtdMinVidas;
    private Integer qtdMinTitulares;
    private Boolean coparticipacao;

    private EstadoDTO estado;

    private TipoAbrangencia tipoAbrangencia;

    private AdministradoraDTO administradora;

    private List<HospitalDTO> hospitais;

    private List<LaboratorioDTO> laboratorios;

    private List<EntidadeDTO> entidades;

    private List<OpcaoDTO> opcoes;

}
