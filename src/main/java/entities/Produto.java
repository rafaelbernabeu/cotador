package entities;

import entities.enums.TipoAbrangencia;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Produto extends PanacheEntity {

    Long valor;
    String nome;

    Long reajuste;
    Boolean ativo;
    Integer idadeMinima;
    Integer idadeMaxima;
    Integer qtdMinVidas;
    Integer qtdMinTitulares;
    Boolean coparticipacao;

    @OneToOne
    Estado estado;

    @Enumerated(EnumType.STRING)
    TipoAbrangencia tipoAbrangencia;

    @OneToOne
    Administradora administradora;

    @OneToMany
    List<Profissao> profissoes;

    @OneToMany
    List<Hospital> hospitais;

    @OneToMany
    List<Laboratorio> laboratorios;

    @OneToMany
    List<Opcao> opcoes;

}
