package dto;

import entities.Produto;
import lombok.Data;

import java.util.List;

@Data
public class Cotacao {

    private List<Produto> produtos;

}
