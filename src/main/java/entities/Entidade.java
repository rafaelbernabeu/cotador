package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Entidade extends PanacheEntityBase implements IEntidade<Entidade> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;
    private String observacoes;
    private String documentacao;
    private String valorAssociacao;

    @ManyToMany
    private List<Profissao> profissoes;

}
