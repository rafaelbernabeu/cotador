package service;

import dto.CotacaoDTO;
import dto.OpcaoDTO;
import entities.Opcao;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@ApplicationScoped
public class CotacaoService {

    public List<OpcaoDTO> geraCotacao(CotacaoDTO cotacao) {
        Stream<Opcao> stream = Opcao.<Opcao>listAll().stream();
        if (cotacao.getCategoria() != null && !cotacao.getCategoria().equals("")) {
            stream = stream.filter(op -> op.getTabela().getCategoria().getNome().equals(cotacao.getCategoria()));
        }
        if (cotacao.getEstado() != null) {
            stream = stream.filter(op -> op.getTabela().getEstado().getNome().equals(cotacao.getEstado().getNome()));
        }
        if (cotacao.getProfissao() != null) {
            stream = stream.filter(op -> op.getTabela().getEntidades().stream()
                    .flatMap(e -> e.getProfissoes().stream())
                    .anyMatch(p -> p.getNome().equals(cotacao.getProfissao().getNome())));
        }
        if (cotacao.getCoparticipacao() != null) {
            stream = stream.filter(op -> op.getCoparticipacao().equals(cotacao.getCoparticipacao()));
        }
        if (cotacao.getAcomodacao() != null && !cotacao.getAcomodacao().equals("")) {
            stream = stream.filter(op -> op.getAcomodacao().getNome().equals(cotacao.getAcomodacao()));
        }
        return stream.map(OpcaoDTO::new).collect(Collectors.toList());
    }

}
