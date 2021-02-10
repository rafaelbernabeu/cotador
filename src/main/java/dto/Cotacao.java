package dto;

import entities.Produto;
import lombok.Data;

import java.util.List;

@Data
public class Cotacao {

    public Cotacao(List<Produto> produtos) {
        this.produtos = produtos;
    }

    private List<Produto> produtos;

}
