package entities;

import entities.enums.TipoAbrangencia;
import entities.enums.TipoAcomodacao;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Produto extends PanacheEntity {

    String nome;
    Boolean ativo;

    @OneToOne
    Administradora administradora;

    @OneToMany
    List<Hospital> hospitais;

    @OneToMany
    List<Laboratorio> laboratorios;

    @Enumerated(EnumType.STRING)
    TipoAbrangencia tipoAbrangencia;

    @Enumerated(EnumType.STRING)
    TipoAcomodacao tipoAcomodacao;
}
