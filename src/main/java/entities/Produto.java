package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import java.util.List;

@Data
@Entity
public class Produto extends PanacheEntity {

    String nome;
    Boolean ativo;
    Long reajuste;
    Integer idadeMinima;
    Integer idadeMaxima;
    Integer qtdMinVidas;
    Integer qtdMinTitulares;
    Boolean coparticipacao;

    @OneToOne
    Estado estado;

    @OneToOne
    Administradora administradora;

    @OneToMany
    List<Entidade> entidades;

    @OneToMany
    List<Hospital> hospitais;

    @OneToMany
    List<Laboratorio> laboratorios;

    @OneToMany
    List<Opcao> opcoes;

}
