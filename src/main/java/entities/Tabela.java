package entities;

import entities.enums.TipoCategoria;
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
import javax.persistence.OneToOne;
import java.util.List;

@Data
@Entity
public class Tabela extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    @OneToOne
    private Estado estado;

    @Enumerated(EnumType.ORDINAL)
    private TipoCategoria categoria;

    @ManyToOne
    private Administradora administradora;

    @ManyToOne
    private Produto produto;

    @OneToMany
    private List<Opcao> opcao;

    @ManyToMany
    private List<Entidade> entidades;

}
