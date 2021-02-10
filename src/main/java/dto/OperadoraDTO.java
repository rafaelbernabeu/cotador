package dto;

import entities.Operadora;
import lombok.Data;

@Data
public class OperadoraDTO {

    public OperadoraDTO(Operadora operadora) {
        this.nome = operadora.getNome();
    }

    private String nome;

}
