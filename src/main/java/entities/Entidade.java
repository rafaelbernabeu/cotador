package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;

@Data
@Entity
public class Entidade extends PanacheEntity {

    private String nome;

}
