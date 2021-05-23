package service;

import dto.CotacaoDTO;
import dto.EstadoDTO;
import dto.OpcaoDTO;
import entities.*;
import entities.enums.Adesao;
import entities.enums.Categoria;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.transaction.Transactional;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static java.util.Collections.emptyList;
import static java.util.stream.Collectors.toList;
import static util.SortUtil.sortOpcoes;

@ApplicationScoped
public class CotacaoService {

    @Inject
    AuditoriaService auditoriaService;

    @Transactional
    public CotacaoDTO geraCotacao(CotacaoDTO consulta) {
        AuditoriaCotacao auditoriaCotacao = auditoriaService.salvarCotacao(consulta);

        Stream<Opcao> stream = Opcao.<Opcao>listAll().stream();
        stream = filtraPorProdutoAtivo(stream);
        stream = filtraPorCoparticipacao(consulta, stream);
        stream = filtraPorAcomodacao(consulta, stream);
        stream = filtraPorEstado(consulta, stream);
        stream = filtraPorCategoria(consulta, stream);
        stream = filtraPorTipoAdesao(consulta, stream);
        stream = filtraPorMei(consulta, stream);
        stream = filtraPorIdadeAndVidas(consulta, stream);
        stream = filtraPorAdministradora(consulta, stream);
        stream = filtraPorOperadora(consulta, stream);
        stream = filtraPorProfissao(consulta, stream);

        List<OpcaoDTO> opcoes = sortOpcoes(stream.map(OpcaoDTO::new)).collect(toList());
        removeEntidadesPorProfissao(consulta, opcoes);

        consulta.setId(auditoriaCotacao.getId());
        consulta.setOpcoes(opcoes);
        return consulta;
    }

    private Stream<Opcao> filtraPorProdutoAtivo(Stream<Opcao> stream) {
        return stream.filter(op -> op.getProduto().getAtivo());
    }

    private Stream<Opcao> filtraPorIdadeAndVidas(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getTitulares() != null && consulta.getDependentes() != null) {
            stream = stream.filter(op -> (consulta.getTitulares().size() + consulta.getDependentes().size()) >= op.getTabela().getQtdMinVidas());
            stream = stream.filter(op -> Stream.concat(consulta.getTitulares().stream(), consulta.getDependentes().stream()).max(Integer::compareTo).orElse(0) <= op.getTabela().getIdadeMaxima());
            if (consulta.getCategoria() != null && consulta.getCategoria().equals(Categoria.ADESAO.getNome())) {
                stream = stream.filter(op -> consulta.getTitulares().stream().min(Integer::compareTo).orElse(0) >= op.getTabela().getIdadeMinima());
            }
            if (consulta.getCategoria() != null && consulta.getCategoria().equals(Categoria.EMPRESARIAL.getNome())) {
                stream = stream.filter(op -> consulta.getTitulares().size() >= op.getTabela().getQtdMinTitulares());
            }
        }

        return stream;
    }

    private Stream<Opcao> filtraPorAcomodacao(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getAcomodacao() != null && !consulta.getAcomodacao().equals("Ambas")) {
            stream = stream.filter(op -> op.getAcomodacao().getNome().equals(consulta.getAcomodacao()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorMei(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getCategoria() != null && consulta.getCategoria().equals(Categoria.EMPRESARIAL.getNome()) && Boolean.TRUE.equals(consulta.getMei())) {
            stream = stream.filter(op -> op.getTabela().getContemplaMEI().equals(consulta.getMei()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorCoparticipacao(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getCoparticipacao() != null && !consulta.getCoparticipacao().equals("Ambas")) {
            stream = stream.filter(op -> op.getCoparticipacao().equals(Boolean.parseBoolean(consulta.getCoparticipacao())));
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
            stream = stream.filter(op -> op.getTabela().getEstado().getSigla().equals(consulta.getEstado().getSigla()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorCategoria(CotacaoDTO consulta, Stream<Opcao> stream) {
        if (consulta.getCategoria() != null) {
            stream = stream.filter(op -> op.getTabela().getCategoria().getNome().equals(consulta.getCategoria()));
        }
        return stream;
    }

    private Stream<Opcao> filtraPorTipoAdesao(CotacaoDTO consulta, Stream<Opcao> stream) {
        String categoria = consulta.getCategoria();
        String tipoAdesao = consulta.getTipoAdesao();

        if (categoria != null && categoria.equals(Categoria.EMPRESARIAL.getNome()) && tipoAdesao != null) {
            if (tipoAdesao.equals(Adesao.LIVRE_ADESAO.getNome())) {
                stream = stream.filter(op -> op.getTabela().getLivreAdesao());
            } else if (tipoAdesao.equals(Adesao.COMPULSORIA.getNome())) {
                stream = stream.filter(op -> op.getTabela().getCompulsoria());
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

    public CotacaoDTO recuperaCotacao(Long id) {
        AuditoriaCotacao cotacao = AuditoriaCotacao.findById(id);

        return cotacao == null ? new CotacaoDTO() :
                CotacaoDTO.builder()
                        .id(cotacao.getId())
                        .mei(cotacao.getMei())
                        .acomodacao(cotacao.getAcomodacao())
                        .coparticipacao(cotacao.getCoparticipacao())
                        .categoria(cotacao.getCategoria().getNome())
                        .estado(cotacao.getEstado() == null ? null : new EstadoDTO(cotacao.getEstado()))
                        .tipoAdesao(cotacao.getTipoAdesao() == null ? null : cotacao.getTipoAdesao().getNome())
                        .titulares(Arrays.stream(cotacao.getTitulares().split(",")).map(Integer::valueOf).collect(toList()))
                        .dependentes(cotacao.getDependentes() == null || cotacao.getDependentes().isEmpty() ? emptyList() : Arrays.stream(cotacao.getDependentes().split(",")).map(Integer::valueOf).collect(toList()))
                        .opcoesOcultas(cotacao.getOpcoesOcultas() == null || cotacao.getOpcoesOcultas().isEmpty() ? emptyList() : Arrays.stream(cotacao.getOpcoesOcultas().split(",")).map(Long::valueOf).collect(toList()))
                        .profissoes(cotacao.getProfissoes() == null || cotacao.getProfissoes().isEmpty() ? emptyList() : Arrays.stream(cotacao.getProfissoes().split(",")).map(pId -> new Profissao(Long.valueOf(pId), null)).collect(toList()))
                        .operadoras(cotacao.getOperadoras() == null || cotacao.getOperadoras().isEmpty() ? emptyList() : Arrays.stream(cotacao.getOperadoras().split(",")).map(oId -> new Operadora(Long.valueOf(oId), null, null)).collect(toList()))
                        .administradoras(cotacao.getAdministradoras() == null || cotacao.getAdministradoras().isEmpty() ? emptyList() : Arrays.stream(cotacao.getAdministradoras().split(",")).map(aId -> new Administradora(Long.valueOf(aId), null)).collect(toList()))
                        .build();
    }

    @Transactional
    public Long atualizaOpcoesOcultas(Long id, List<Long> idsOpcoes) {
        AuditoriaCotacao cotacao = AuditoriaCotacao.findById(id);
        cotacao.setOpcoesOcultas(idsOpcoes.stream().map(Object::toString).collect(Collectors.joining(",")));
        cotacao.persist();

        return cotacao.getId();
    }
}
