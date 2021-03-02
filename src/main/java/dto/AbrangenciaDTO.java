package dto;

import lombok.Data;

@Data
public class AbrangenciaDTO {

    private String nome;

    public AbrangenciaDTO() {}
    public AbrangenciaDTO(String nome) {
        this.nome = nome;
    }

}
