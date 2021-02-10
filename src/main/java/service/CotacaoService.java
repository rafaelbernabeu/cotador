package service;

import dto.Cotacao;
import dto.SolicitacaoCotacao;
import entities.Produto;
import entities.Profissao;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.util.List;

@ApplicationScoped
public class CotacaoService {

    @Inject
    ProfissaoService profissaoService;

    @Inject
    ProdutoService produtoService;

    public Cotacao geraCotacao(SolicitacaoCotacao solicitacaoCotacao) {
        Profissao profissao = profissaoService.getByNome(solicitacaoCotacao.getProfissao());
        List<Produto> produtos = produtoService.getByProfissao(profissao);

        return new Cotacao(produtos);
    }
}
