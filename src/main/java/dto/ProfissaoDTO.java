package dto;

import entities.Profissao;
import lombok.Data;

@Data
public class ProfissaoDTO {

    public ProfissaoDTO(Profissao profissao) {
        this.nome = profissao.getNome();
    }

    private String nome;

}
