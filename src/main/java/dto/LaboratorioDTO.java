package dto;

import entities.Laboratorio;
import lombok.Data;

@Data
public class LaboratorioDTO {

    public LaboratorioDTO(Laboratorio laboratorio) {
        this.nome = laboratorio.getNome();
    }

    private String nome;

}
