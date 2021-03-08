package entities;

import dto.LaboratorioDTO;
import entities.enums.Estado;
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
public class Laboratorio extends PanacheEntityBase {

   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private Long id;

   private String nome;

   @Enumerated(EnumType.ORDINAL)
   private Estado estado;

   public Laboratorio(){}
   public Laboratorio(LaboratorioDTO laboratorioDTO) {
      this.id = laboratorioDTO.getId();
      this.nome = laboratorioDTO.getNome();
      this.estado = Estado.getBySigla(laboratorioDTO.getEstado().getSigla());
   }
}
