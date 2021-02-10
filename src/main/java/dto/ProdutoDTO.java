package dto;

import entities.Produto;
import entities.enums.TipoAbrangencia;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
public class ProdutoDTO {

    public ProdutoDTO(Produto produto) {
        this.valor = produto.getValor();
        this.nome = produto.getNome();
        this.reajuste = produto.getReajuste();
        this.ativo = produto.getAtivo();
        this.idadeMinima = produto.getIdadeMinima();
        this.idadeMaxima = produto.getIdadeMaxima();
        this.qtdMinVidas = produto.getQtdMinVidas();
        this.qtdMinTitulares = produto.getQtdMinTitulares();
        this.coparticipacao = produto.getCoparticipacao();
        this.estado = new EstadoDTO(produto.getEstado());
        this.tipoAbrangencia = produto.getTipoAbrangencia();
        this.administradora = new AdministradoraDTO(produto.getAdministradora());
        this.hospitais = produto.getHospitais().stream().map(HospitalDTO::new).collect(Collectors.toList());
        this.laboratorios = produto.getLaboratorios().stream().map(LaboratorioDTO::new).collect(Collectors.toList());
        this.entidades = produto.getEntidades().stream().map(EntidadeDTO::new).collect(Collectors.toList());
    }

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
