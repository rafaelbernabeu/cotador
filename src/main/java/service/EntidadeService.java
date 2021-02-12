package service;

import entities.Entidade;
import entities.Profissao;

import javax.enterprise.context.ApplicationScoped;
import javax.transaction.Transactional;
import java.util.List;

@ApplicationScoped
public class EntidadeService {

    @Transactional
    public void atualizarProfissoesDaEntidade(Long idEntidade, List<Profissao> profissoes) {
        Entidade entidade = Entidade.findById(idEntidade);
        entidade.setProfissoes(profissoes);
        entidade.persistAndFlush();
    }

}
