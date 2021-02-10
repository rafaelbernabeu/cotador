package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Data
@Entity
@Table(name = "Hospital")
public class Hospital extends PanacheEntity {

    private String nome;
    private String local;

}
