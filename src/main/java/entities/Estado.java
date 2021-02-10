package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;

@Data
@Entity
public class Estado extends PanacheEntity {

    private String nome;
    private String sigla;

}
