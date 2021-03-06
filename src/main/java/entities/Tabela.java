package entities;

import dto.TabelaDTO;
import entities.enums.Categoria;
import entities.enums.Estado;
import entities.enums.Reajuste;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import java.util.List;
import java.util.stream.Collectors;

@Data
@Entity
public class Tabela extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    private Boolean contemplaMEI;
    private Boolean compulsoria;
    private Integer idadeMinima;
    private Integer idadeMaxima;
    private Integer qtdMinVidas;
    private Integer qtdMinTitulares;
    private Boolean preferencial;
    private Reajuste reajuste;

    @Enumerated(EnumType.ORDINAL)
    private Estado estado;

    @Enumerated(EnumType.ORDINAL)
    private Categoria categoria;

    @ManyToOne
    private Operadora operadora;

    @ManyToOne
    private Administradora administradora;

    @ManyToMany
    private List<Produto> produtos;

    @OneToMany
    private List<Opcao> opcoes;

    @ManyToMany
    private List<Entidade> entidades;

    public Tabela() {}

    public Tabela(TabelaDTO tabelaDTO) {
        this.id = tabelaDTO.getId();
        this.nome = tabelaDTO.getNome();
        this.contemplaMEI = tabelaDTO.getContemplaMEI();
        this.compulsoria = tabelaDTO.getCompulsoria();
        this.idadeMinima = tabelaDTO.getIdadeMinima();
        this.idadeMaxima = tabelaDTO.getIdadeMaxima();
        this.qtdMinVidas = tabelaDTO.getQtdMinVidas();
        this.qtdMinTitulares = tabelaDTO.getQtdMinTitulares();
        this.preferencial = tabelaDTO.getPreferencial();
        this.reajuste = Reajuste.getByNome(tabelaDTO.getReajuste());
        this.estado = Estado.getBySigla(tabelaDTO.getEstado().getSigla());
        this.categoria = Categoria.getByNome(tabelaDTO.getCategoria());
        this.operadora = tabelaDTO.getOperadora();
        this.administradora = tabelaDTO.getAdministradora();
        this.produtos = tabelaDTO.getProdutos().stream().map(Produto::new).collect(Collectors.toList());
        this.opcoes = tabelaDTO.getOpcoes();
        this.entidades = tabelaDTO.getEntidades();
    }

}
