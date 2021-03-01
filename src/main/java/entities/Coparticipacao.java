package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class Coparticipacao extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Float valorProntoSocorro;
    private Float percentualProntoSocorro;

    private Float valorConsulta;
    private Float percentualConsulta;

    private Float valorExameSimples;
    private Float percentualExameSimples;

    private Float valorExameEspecial;
    private Float percentualExameEspecial;

    private Float valorInternacao;
    private Float percentualInternacao;


}
