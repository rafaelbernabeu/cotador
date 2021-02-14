package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Tabela extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    private Estado estado;

    private String tipoTabela;
    private Integer idadeMinima;
    private Integer idadeMaxima;
    private Integer qtdMinVidas;
    private Integer qtdMinTitulares;

    @ManyToMany
    private List<Opcao> opcao;

    @ManyToOne
    private Administradora administradora;

    @ManyToOne
    private Produto produto;

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

    private String reajuste;

    @ManyToMany
    private List<Entidade> entidades;

}
