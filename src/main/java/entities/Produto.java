package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.List;

@Data
@Entity
public class Produto extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;
    private Boolean ativo;
    private Float reembolso;
    private String abrangencia;

    @ManyToOne
    private Operadora operadora;

    @OneToOne(cascade = CascadeType.ALL)
    private Coparticipacao coparticipacao;

    @ManyToMany
    private List<Laboratorio> laboratorios;

    @ManyToMany
    private List<Hospital> hospitais;

}
