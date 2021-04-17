package dto;

import entities.Administradora;
import entities.Entidade;
import entities.Operadora;
import entities.Tabela;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
public class TabelaDTO {

    private Long id;
    private String nome;
    private String reajuste;
    private EstadoDTO estado;
    private String categoria;
    private Boolean compulsoria;
    private Boolean livreAdesao;
    private Integer idadeMinima;
    private Integer idadeMaxima;
    private Integer qtdMinVidas;
    private Operadora operadora;
    private Boolean contemplaMEI;
    private Integer qtdMinTitulares;
    private List<Entidade> entidades;
    private List<ProdutoDTO> produtos;
    private Administradora administradora;

    public TabelaDTO() {}
    public TabelaDTO(Tabela tabela) {
        this.id = tabela.getId();
        this.nome = tabela.getNome();
        this.operadora = tabela.getOperadora();
        this.entidades = tabela.getEntidades();
        this.compulsoria = tabela.getCompulsoria();
        this.livreAdesao = tabela.getLivreAdesao();
        this.idadeMinima = tabela.getIdadeMinima();
        this.idadeMaxima = tabela.getIdadeMaxima();
        this.qtdMinVidas = tabela.getQtdMinVidas();
        this.contemplaMEI = tabela.getContemplaMEI();
        this.reajuste = tabela.getReajuste().getNome();
        this.estado = new EstadoDTO(tabela.getEstado());
        this.categoria = tabela.getCategoria().getNome();
        this.administradora = tabela.getAdministradora();
        this.qtdMinTitulares = tabela.getQtdMinTitulares();
        this.produtos = tabela.getProdutos().stream().map(ProdutoDTO::new).collect(Collectors.toList());
    }
}

