package dto;

import entities.Laboratorio;
import lombok.Data;

@Data
public class LaboratorioDTO {

    private Long id;
    private String nome;
    private EstadoDTO estado;

    public LaboratorioDTO(){}
    public LaboratorioDTO(Laboratorio laboratorio) {
        this.id = laboratorio.getId();
        this.nome = laboratorio.getNome();
        this.estado = new EstadoDTO(laboratorio.getEstado());
    }
}
