package service;

import dto.CotacaoDTO;
import dto.OpcaoDTO;
import entities.Opcao;
import entities.enums.Categoria;

import javax.enterprise.context.ApplicationScoped;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@ApplicationScoped
public class CotacaoService {

    public List<OpcaoDTO> geraCotacao(CotacaoDTO consulta) {
        Stream<Opcao> stream = Opcao.<Opcao>listAll().stream();
        stream = filtraPorMei(consulta, stream);
        stream = filtraPorCoparticipacao(consulta, stream);
        stream = filtraPorAcomodacao(consulta, stream);
        stream = filtraPorAdministradora(consulta, stream);
        stream = filtraPorOperadora(consulta, stream);
        stream = filtraPorEstado(consulta, stream);
        stream = filtraPorProfissao(consulta, stream);
        stream = filtraPorCategoria(consulta, stream);
        stream = filtraPorIdadeAndVidas(consulta, stream);

        List<OpcaoDTO> cotacao = stream.map(OpcaoDTO::new).collect(Collectors.toList());

        removeEntidadesPorProfissao(consulta, cotacao);
        return cotacao;
    }

    private Stream<Opcao> filtraPorIdadeAndVidas(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (!consulta.getTitulares().isEmpty() || ! consulta.getDependentes().isEmpty()) {
            stream = stream.filter(op -> (consulta.getTitulares().size() + consulta.getDependentes().size()) >= op.getTabela().getQtdMinVidas());
            stream = stream.filter(op -> Stream.concat(consulta.getTitulares().stream(), consulta.getDependentes().stream()).max(Integer::compareTo).orElse(0) <= op.getTabela().getIdadeMaxima());
            if (consulta.getCategoria() != null && consulta.getCategoria().equals(Categoria.ADESAO.getNome())) {
                stream = stream.filter(op -> consulta.getTitulares().stream().min(Integer::compareTo).orElse(0) >= op.getTabela().getIdadeMinima());
            }
        }

        return stream;
    }

    private Stream<Opcao> filtraPorAcomodacao(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getAcomodacao() != null && !consulta.getAcomodacao().equals("")) {
            stream = stream.filter(op -> op.getAcomodacao().getNome().equals(consulta.getAcomodacao()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorMei(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getMei() != null) {
            stream = stream.filter(op -> op.getTabela().getContemplaMEI().equals(consulta.getMei()));
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
        String categoria = consulta.getCategoria();
        String tipoAdesao = consulta.getTipoAdesao();

        if (categoria != null && !categoria.equals("")) {
            stream = stream.filter(op -> op.getTabela().getCategoria().getNome().equals(categoria));
            if (categoria.equals(Categoria.EMPRESARIAL.getNome()) && tipoAdesao != null) {
                if (tipoAdesao.equals("livreAdesao")) {
                    stream = stream.filter(op -> op.getTabela().getLivreAdesao());
                } else if (tipoAdesao.equals("compulsoria")) {
                    stream = stream.filter(op -> op.getTabela().getCompulsoria());
                }
            }
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

    private void removeEntidadesPorProfissao(CotacaoDTO consulta, List<OpcaoDTO> cotacao) {
        if (consulta.getProfissoes() != null && !consulta.getProfissoes().isEmpty()) {
            cotacao.forEach(c -> c.getTabela().getEntidades().removeIf(entidade -> entidade.getProfissoes().stream().noneMatch(p -> consulta.getProfissoes().contains(p))));
        }
    }
}
