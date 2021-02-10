package dto;

import entities.Entidade;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
public class EntidadeDTO {

    public EntidadeDTO(Entidade entidade) {
        this.nome = entidade.getNome();
        this.profissoes = entidade.getProfissoes().stream().map(ProfissaoDTO::new).collect(Collectors.toList());
    }

    private String nome;
    private List<ProfissaoDTO> profissoes;

}
