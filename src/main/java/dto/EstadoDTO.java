package dto;

import entities.enums.Estado;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EstadoDTO {

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
