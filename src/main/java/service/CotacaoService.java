package service;

import dto.CotacaoDTO;
import dto.SolicitacaoCotacaoDTO;
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

    public CotacaoDTO geraCotacao(SolicitacaoCotacaoDTO solicitacaoCotacao) {
        Profissao profissao = profissaoService.getByNome(solicitacaoCotacao.getProfissao());
        List<Produto> produtos = produtoService.getByProfissao(profissao);

        return new CotacaoDTO(produtos);
    }
}
