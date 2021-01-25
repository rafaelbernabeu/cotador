package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import java.util.List;

@Data
@Entity
public class Administradora extends PanacheEntity {

    String nome;

    @OneToMany
    List<Operadora> operadoras;

}
