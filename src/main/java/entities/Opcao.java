package entities;

import entities.enums.TipoAcomodacao;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@Entity
public class Opcao extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.ORDINAL)
    private TipoAcomodacao acomodacao;

    private Boolean coparticipacao;

    private Float valor0a18anos;
    private Float valor19a23anos;
    private Float valor24a28anos;
    private Float valor29a33anos;
    private Float valor34a38anos;
    private Float valor39a43anos;
    private Float valor44a48anos;
    private Float valor49a53anos;
    private Float valor54a58anos;
    private Float valor59ouMaisAnos;

}
