package dto;

import entities.Administradora;
import entities.Entidade;
import entities.Opcao;
import entities.Operadora;
import entities.Produto;
import entities.Tabela;
import lombok.Data;

import java.util.List;

@Data
public class TabelaDTO {

    private Long id;
    private String nome;
    private Boolean pme;
    private Boolean contemplaMEI;
    private Boolean compulsoria;
    private Integer idadeMinima;
    private Integer idadeMaxima;
    private Integer qtdMinVidas;
    private Integer qtdMinTitulares;
    private Boolean preferencial;
    private String reajuste;
    private EstadoDTO estado;
    private String categoria;
    private Operadora operadora;
    private Administradora administradora;
    private List<Produto> produtos;
    private List<Opcao> opcoes;
    private List<Entidade> entidades;

    public TabelaDTO() {}
    public TabelaDTO(Tabela tabela) {
        this.id = tabela.getId();
        this.nome = tabela.getNome();
        this.pme = tabela.getPme();
        this.contemplaMEI = tabela.getContemplaMEI();
        this.compulsoria = tabela.getCompulsoria();
        this.idadeMinima = tabela.getIdadeMinima();
        this.idadeMaxima = tabela.getIdadeMaxima();
        this.qtdMinVidas = tabela.getQtdMinVidas();
        this.qtdMinTitulares = tabela.getQtdMinTitulares();
        this.preferencial = tabela.getPreferencial();
        this.reajuste = tabela.getReajuste();
        this.estado = new EstadoDTO(tabela.getEstado());
        this.categoria = tabela.getCategoria().getNome();
        this.operadora = tabela.getOperadora();
        this.administradora = tabela.getAdministradora();
        this.produtos = tabela.getProdutos();
        this.opcoes = tabela.getOpcoes();
        this.entidades = tabela.getEntidades();
    }
}

