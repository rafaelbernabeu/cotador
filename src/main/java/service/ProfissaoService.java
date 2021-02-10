package service;

import entities.Profissao;

import javax.enterprise.context.ApplicationScoped;
import javax.ws.rs.NotFoundException;

@ApplicationScoped
public class ProfissaoService {

    public Profissao getByNome(String nome) {
        return Profissao.<Profissao>find("nome", nome).firstResultOptional()
                .orElseThrow(NotFoundException::new);
    }

}
