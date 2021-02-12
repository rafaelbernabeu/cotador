package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import java.util.List;

@Data
@Entity
public class Entidade extends PanacheEntity {

    private String nome;

    @ManyToMany
    private List<Profissao> profissoes;

}
