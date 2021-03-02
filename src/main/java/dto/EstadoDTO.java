package dto;

import entities.enums.Estado;
import lombok.Data;

@Data
public class EstadoDTO {

    public EstadoDTO(){}

    public EstadoDTO(Estado estado) {
        this.nome = estado.getNome();
        this.sigla = estado.getSigla();
    }

    private String nome;
    private String sigla;

}
