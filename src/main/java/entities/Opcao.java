package entities;

import entities.enums.TipoAcomodacao;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

@Data
@Entity
public class Opcao extends PanacheEntity {

    @Enumerated(EnumType.STRING)
    private TipoAcomodacao acomodacao;

}
