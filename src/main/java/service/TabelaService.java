package service;

import entities.Tabela;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;

@ApplicationScoped
public class TabelaService {

    public List<Tabela> listAll() {
        return Tabela.listAll();
    }

}
