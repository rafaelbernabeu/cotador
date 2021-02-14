package entities;

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

    private Boolean ativo;
    private String abrangencia;

    @ManyToOne
    private Operadora operadora;

    private String nome;

    private Float reembolso;

    @OneToMany
    private List<Coparticipacao> coparticipacoes;

    @ManyToMany
    private List<Laboratorio> laboratorios;

    @ManyToMany
    private List<Hospital> hospitais;


}
