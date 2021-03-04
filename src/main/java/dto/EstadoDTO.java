package dto;

import entities.enums.Estado;
import lombok.Data;

@Data
public class EstadoDTO {

    public EstadoDTO(){}

    public EstadoDTO(String sigla) {
        Estado estado = Estado.getBySigla(sigla);
        this.nome = estado.getNome();
        this.sigla = estado.getSigla();
    }

    public EstadoDTO(Estado estado) {
        this.nome = estado.getNome();
        this.sigla = estado.getSigla();
    }

    private String nome;
    private String sigla;

}
