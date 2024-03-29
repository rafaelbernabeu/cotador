package entities;

import dto.ProdutoDTO;
import entities.enums.Abrangencia;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
public class Produto extends PanacheEntityBase implements IEntidade<Produto> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;
    private Boolean ativo;
    private Float reembolso;
    private String observacao;

    @Enumerated(EnumType.ORDINAL)
    private Abrangencia abrangencia;

    @ManyToOne
    private Operadora operadora;

    @OneToOne(cascade = CascadeType.ALL)
    private Coparticipacao coparticipacao;

    @ManyToMany
    private List<Laboratorio> laboratorios;

    @ManyToMany
    private List<Hospital> hospitais;

    public Produto() {}
    public Produto(ProdutoDTO produtoDTO) {
        this.id = produtoDTO.getId();
        this.nome = produtoDTO.getNome();
        this.ativo = produtoDTO.getAtivo();
        this.reembolso = produtoDTO.getReembolso();
        this.observacao = produtoDTO.getObservacao();
        this.abrangencia = Abrangencia.getByNome(produtoDTO.getAbrangencia());
        this.operadora = produtoDTO.getOperadora();
        this.coparticipacao = produtoDTO.getCoparticipacao();
        this.laboratorios = produtoDTO.getLaboratorios();
        this.hospitais = produtoDTO.getHospitais();
    }
}
