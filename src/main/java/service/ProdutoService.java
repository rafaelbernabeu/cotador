package service;

import entities.Coparticipacao;
import entities.Produto;
import entities.Profissao;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class ProdutoService {

    public List<Produto> getByProfissao(Profissao profissao) {
        return Produto.find("profissoes", profissao).list();
    }

    public List<Produto> getAll() {
        return Produto.listAll();
    }

    public Produto add(Produto produto) {
        if (produto.getCoparticipacao() == null) {
            produto.setCoparticipacao(new Coparticipacao());
        }
        Produto.persist(produto);
        return produto;
    }
}
