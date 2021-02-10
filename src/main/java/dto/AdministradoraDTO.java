package dto;

import entities.Administradora;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
public class AdministradoraDTO {

    public AdministradoraDTO(Administradora administradora) {
        this.nome = administradora.getNome();
        this.operadoras = administradora.getOperadoras().stream().map(OperadoraDTO::new).collect(Collectors.toList());
    }

    private String nome;
    private List<OperadoraDTO> operadoras;
}
