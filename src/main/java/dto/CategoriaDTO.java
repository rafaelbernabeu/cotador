package dto;

import lombok.Data;

@Data
public class CategoriaDTO {

    private String nome;

    public CategoriaDTO() {}
    public CategoriaDTO(String nome) {
        this.nome = nome;
    }

}
