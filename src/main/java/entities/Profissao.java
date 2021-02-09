package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;

@Data
@Entity
public class Profissao extends PanacheEntity {

    private String nome;

}
