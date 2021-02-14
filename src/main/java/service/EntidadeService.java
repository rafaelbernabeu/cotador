package service;

import entities.Entidade;
import entities.Profissao;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class EntidadeService {

    public List<Profissao> atualizarProfissoesDaEntidade(Long idEntidade, List<Profissao> profissoes) {
        Entidade entidade = Entidade.findById(idEntidade);
        entidade.setProfissoes(profissoes);
        entidade.persistAndFlush();
        return profissoes;
    }

}
