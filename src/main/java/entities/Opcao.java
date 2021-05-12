package entities;

import dto.OpcaoDTO;
import entities.enums.Acomodacao;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Opcao extends PanacheEntityBase implements IEntidade<Opcao> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Tabela tabela;

    @ManyToOne
    private Produto produto;

    @Enumerated(EnumType.ORDINAL)
    private Acomodacao acomodacao;

    private Boolean coparticipacao;

    private Float valor0a18anos;
    private Float valor19a23anos;
    private Float valor24a28anos;
    private Float valor29a33anos;
    private Float valor34a38anos;
    private Float valor39a43anos;
    private Float valor44a48anos;
    private Float valor49a53anos;
    private Float valor54a58anos;
    private Float valor59ouMaisAnos;

    public Opcao() {}
    public Opcao(OpcaoDTO opcaoDTO) {
        this.id = opcaoDTO.getId();
        this.tabela = new Tabela(opcaoDTO.getTabela());
        this.produto = new Produto(opcaoDTO.getProduto());
        this.acomodacao = Acomodacao.getByNome(opcaoDTO.getAcomodacao());
        this.coparticipacao = opcaoDTO.getCoparticipacao();
        this.valor0a18anos = opcaoDTO.getValor0a18anos();
        this.valor19a23anos = opcaoDTO.getValor19a23anos();
        this.valor24a28anos = opcaoDTO.getValor24a28anos();
        this.valor29a33anos = opcaoDTO.getValor29a33anos();
        this.valor34a38anos = opcaoDTO.getValor34a38anos();
        this.valor39a43anos = opcaoDTO.getValor39a43anos();
        this.valor44a48anos = opcaoDTO.getValor44a48anos();
        this.valor49a53anos = opcaoDTO.getValor49a53anos();
        this.valor54a58anos = opcaoDTO.getValor54a58anos();
        this.valor59ouMaisAnos = opcaoDTO.getValor59ouMaisAnos();
    }
}
