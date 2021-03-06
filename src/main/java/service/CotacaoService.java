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

    public List<OpcaoDTO> geraCotacao(CotacaoDTO consulta) {
        Stream<Opcao> stream = Opcao.<Opcao>listAll().stream();
        if (consulta.getCategoria() != null && !consulta.getCategoria().equals("")) {
            stream = stream.filter(op -> op.getTabela().getCategoria().getNome().equals(consulta.getCategoria()));
        }
        if (consulta.getEstado() != null) {
            stream = stream.filter(op -> op.getTabela().getEstado().getNome().equals(consulta.getEstado().getNome()));
        }
        if (consulta.getProfissao() != null) {
            stream = stream.filter(op -> op.getTabela().getEntidades().stream().flatMap(e -> e.getProfissoes().stream()).anyMatch(p -> p.getNome().equals(consulta.getProfissao().getNome())));
        }
        if (consulta.getCoparticipacao() != null) {
            stream = stream.filter(op -> op.getCoparticipacao().equals(consulta.getCoparticipacao()));
        }
        if (consulta.getAcomodacao() != null && !consulta.getAcomodacao().equals("")) {
            stream = stream.filter(op -> op.getAcomodacao().getNome().equals(consulta.getAcomodacao()));
        }

        List<OpcaoDTO> cotacao = stream.map(OpcaoDTO::new).collect(Collectors.toList());

        if (consulta.getProfissao() != null) {
            cotacao.forEach(c -> c.getTabela().getEntidades().removeIf(entidade -> !entidade.getProfissoes().contains(consulta.getProfissao())));
        }
        return cotacao;
    }

}
