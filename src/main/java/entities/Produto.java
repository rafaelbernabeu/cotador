package entities;

import entities.enums.TipoAbrangencia;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Produto extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long valor;
    private String nome;

    private Long reajuste;
    private Boolean ativo;
    private Integer idadeMinima;
    private Integer idadeMaxima;
    private Integer qtdMinVidas;
    private Integer qtdMinTitulares;
    private Boolean coparticipacao;

    @OneToOne
    private Estado estado;

    @Enumerated(EnumType.STRING)
    private TipoAbrangencia tipoAbrangencia;

    @OneToOne
    private Administradora administradora;

    @OneToMany
    private List<Hospital> hospitais;

    @OneToMany
    private List<Laboratorio> laboratorios;

    @OneToMany
    private List<Entidade> entidades;

    @OneToMany
    private List<Opcao> opcoes;

}
