package entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import java.util.List;

@Data
@Entity
public class Operadora {

    @Id
    @GeneratedValue
    Long id;

    @OneToMany
    List<Produto> produtos;
}
