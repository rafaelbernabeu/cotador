package entities;

import entities.enums.TipoAcomodacao;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.OneToOne;

@Data
@Entity
public class Plano extends PanacheEntity {

    @OneToOne
    Estado estado;

    Integer idadeMinima;
    Integer idadeMaxima;
    Integer qtdMinVidas;
    Integer qtdMinTitulares;
    Boolean coparticipacao;
    String reajuste;


    @Enumerated(EnumType.STRING)
    TipoAcomodacao acomodacao;

    @OneToOne
    Produto produto;

}
