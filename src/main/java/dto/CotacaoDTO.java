package dto;

import entities.Produto;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
public class CotacaoDTO {

    public CotacaoDTO(List<Produto> produtos) {
        this.produtos = produtos.stream().map(ProdutoDTO::new).collect(Collectors.toList());
    }

    private List<ProdutoDTO> produtos;

}
