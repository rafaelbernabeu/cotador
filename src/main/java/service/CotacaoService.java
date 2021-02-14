package service;

import dto.SolicitacaoCotacaoDTO;
import entities.Entidade;
import entities.Profissao;
import entities.Tabela;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.util.List;
import java.util.stream.Collectors;

@ApplicationScoped
public class CotacaoService {

    @Inject
    TabelaService tabelaService;

    @Inject
    ProfissaoService profissaoService;

    @Inject
    ProdutoService produtoService;

    public List<Tabela> geraCotacao(SolicitacaoCotacaoDTO solicitacaoCotacao) {
        Profissao profissao = profissaoService.getByNome(solicitacaoCotacao.getProfissao());
        List<Tabela> tabelas = tabelaService.listAll().stream()
                .filter(tabela -> tabelaTemProfissao(tabela, profissao))
                .collect(Collectors.toList());

        return tabelas;
    }

    private boolean tabelaTemProfissao(Tabela tabela, Profissao profissaoRequest) {
        for (Entidade entidade : tabela.getEntidades()) {
            for (Profissao profissaoProduto : entidade.getProfissoes()) {
                if (profissaoRequest.equals(profissaoProduto)) {
                    return true;
                }
            }
        }

        return false;
    }
}
