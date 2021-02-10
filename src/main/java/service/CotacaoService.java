package service;

import dto.CotacaoDTO;
import dto.SolicitacaoCotacaoDTO;
import entities.Entidade;
import entities.Produto;
import entities.Profissao;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.util.List;
import java.util.stream.Collectors;

@ApplicationScoped
public class CotacaoService {

    @Inject
    ProfissaoService profissaoService;

    @Inject
    ProdutoService produtoService;

    public CotacaoDTO geraCotacao(SolicitacaoCotacaoDTO solicitacaoCotacao) {
        Profissao profissao = profissaoService.getByNome(solicitacaoCotacao.getProfissao());
        List<Produto> produtos = produtoService.getAll().stream()
                .filter(produto -> produtoTemProfissao(produto, profissao))
                .collect(Collectors.toList());

        return new CotacaoDTO(produtos);
    }

    private boolean produtoTemProfissao(Produto produto, Profissao profissaoRequest) {
        for (Entidade entidade : produto.getEntidades()) {
            for (Profissao profissaoProduto : entidade.getProfissoes()) {
                if (profissaoRequest.equals(profissaoProduto)) {
                    return true;
                }
            }
        }

        return false;
    }
}
