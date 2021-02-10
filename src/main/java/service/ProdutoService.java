package service;

import entities.Produto;
import entities.Profissao;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class ProdutoService {

    public List<Produto> getByProfissao(Profissao profissao) {
        return Produto.find("profissoes", profissao).list();
    }

}
