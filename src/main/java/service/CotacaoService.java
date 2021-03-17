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
        stream = filtraPorAdministradora(consulta, stream);
        stream = filtraPorOperadora(consulta, stream);
        stream = filtraPorCategoria(consulta, stream);
        stream = filtraPorEstado(consulta, stream);
        stream = filtraPorProfissao(consulta, stream);
        stream = filtraPorCoparticipacao(consulta, stream);
        stream = filtraPorAcomodacao(consulta, stream);
        stream = filtraPorIdadeAndVidas(consulta, stream);

        List<OpcaoDTO> cotacao = stream.map(OpcaoDTO::new).collect(Collectors.toList());

        removeEntidadesPorProfissao(consulta, cotacao);
        return cotacao;
    }

    private Stream<Opcao> filtraPorIdadeAndVidas(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getTipoFiltro() != null && !consulta.getTipoFiltro().isEmpty()) {
            return filtraOperacaoPorTipoFiltro(stream, consulta);
        }
        return stream;
    }

    private Stream<Opcao> filtraOperacaoPorTipoFiltro(Stream<Opcao> streamParam, CotacaoDTO consulta) {
        Stream<Opcao> opcoes = streamParam;
        switch (consulta.getTipoFiltro().trim()) {
            case "<":
                opcoes = filtraOperacaoMenorQue(consulta, opcoes);
                break;

            case "=":
                opcoes = filtraOperacaoIgual(consulta, opcoes);
                break;

            case ">":
                opcoes = filtraOperacaoMaiorQue(consulta, opcoes);
                break;

            default:
                return opcoes;
        }
        return opcoes;
    }

    private Stream<Opcao> filtraOperacaoMaiorQue(CotacaoDTO consulta, Stream<Opcao> opcoes) {
        if (consulta.getIdadeMin() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getIdadeMinima() > consulta.getIdadeMin());
        }
        if (consulta.getIdadeMax() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getIdadeMaxima() > consulta.getIdadeMax());
        }
        if (consulta.getQtdMinVidas() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getQtdMinVidas() > consulta.getQtdMinVidas());
        }
        return opcoes;
    }

    private Stream<Opcao> filtraOperacaoIgual(CotacaoDTO consulta, Stream<Opcao> opcoes) {
        if (consulta.getIdadeMin() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getIdadeMinima() == consulta.getIdadeMin());
        }
        if (consulta.getIdadeMax() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getIdadeMaxima() == consulta.getIdadeMax());
        }
        if (consulta.getQtdMinVidas() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getQtdMinVidas() == consulta.getQtdMinVidas());
        }
        return opcoes;
    }

    private Stream<Opcao> filtraOperacaoMenorQue(CotacaoDTO consulta, Stream<Opcao> opcoes) {
        if (consulta.getIdadeMin() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getIdadeMinima() < consulta.getIdadeMin());
        }
        if (consulta.getIdadeMax() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getIdadeMaxima() < consulta.getIdadeMax());
        }
        if (consulta.getQtdMinVidas() > 0) {
            opcoes = opcoes.filter(op -> op.getTabela().getQtdMinVidas() < consulta.getQtdMinVidas());
        }
        return opcoes;
    }

    private void removeEntidadesPorProfissao(CotacaoDTO consulta, List<OpcaoDTO> cotacao) {
        if (consulta.getProfissoes() != null && !consulta.getProfissoes().isEmpty()) {
            cotacao.forEach(c -> c.getTabela().getEntidades().removeIf(entidade -> entidade.getProfissoes().stream().noneMatch(p -> consulta.getProfissoes().contains(p))));
        }
    }

    private Stream<Opcao> filtraPorAcomodacao(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getAcomodacao() != null && !consulta.getAcomodacao().equals("")) {
            stream = stream.filter(op -> op.getAcomodacao().getNome().equals(consulta.getAcomodacao()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorCoparticipacao(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getCoparticipacao() != null) {
            stream = stream.filter(op -> op.getCoparticipacao().equals(consulta.getCoparticipacao()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorProfissao(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getProfissoes() != null && !consulta.getProfissoes().isEmpty()) {
            stream = stream.filter(op -> op.getTabela().getEntidades().stream().flatMap(e -> e.getProfissoes().stream()).anyMatch(p -> consulta.getProfissoes().contains(p)));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorEstado(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getEstado() != null) {
            stream = stream.filter(op -> op.getTabela().getEstado().getNome().equals(consulta.getEstado().getNome()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorCategoria(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getCategoria() != null && !consulta.getCategoria().equals("")) {
            stream = stream.filter(op -> op.getTabela().getCategoria().getNome().equals(consulta.getCategoria()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorOperadora(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getOperadoras() != null && !consulta.getOperadoras().isEmpty()) {
            stream = stream.filter(op -> consulta.getOperadoras().stream().anyMatch(operadora -> op.getTabela().getOperadora().getId().equals(operadora.getId())));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorAdministradora(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getAdministradoras() != null && !consulta.getAdministradoras().isEmpty()) {
            stream = stream.filter(op -> consulta.getAdministradoras().stream().anyMatch(adm -> op.getTabela().getAdministradora().getId().equals(adm.getId())));
        }
        return stream;
    }

}
