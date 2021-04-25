package entities;

import dto.CotacaoDTO;
import entities.enums.Adesao;
import entities.enums.Categoria;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.time.LocalDateTime;
import java.util.stream.Collectors;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AuditoriaCotacao extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.ORDINAL)
    private Categoria categoria;

    @Enumerated(EnumType.ORDINAL)
    private Adesao tipoAdesao;

    private Boolean mei;
    private String estado;
    private String titulares;
    private String acomodacao;
    private String operadoras;
    private String profissoes;
    private String dependentes;
    private String opcoesOcultas;
    private String administradoras;
    private String coparticipacao;

    @ManyToOne
    private Usuario usuario;
    private LocalDateTime dataHora;

    public AuditoriaCotacao(CotacaoDTO cotacao, Usuario usuario) {
        this.usuario = usuario;
        this.dataHora = LocalDateTime.now();

        this.mei = cotacao.getMei();
        this.acomodacao = cotacao.getAcomodacao();
        this.coparticipacao = cotacao.getCoparticipacao();

        cotacao.getEstadoOptional().ifPresent(e -> this.estado = e.getSigla());
        cotacao.getTipoAdesaoOptional().ifPresent(a -> this.tipoAdesao = Adesao.getByNome(a));
        cotacao.getCategoriaOptional().ifPresent(c -> this.categoria = Categoria.getByNome(c));
        cotacao.getTitularesOptional().ifPresent(t -> this.titulares = t.stream().map(Long::toString).collect(Collectors.joining(",")));
        cotacao.getDependentesOptional().ifPresent(d -> this.dependentes = d.stream().map(Long::toString).collect(Collectors.joining(",")));
        cotacao.getProfissoesOptional().ifPresent(prof -> this.profissoes = prof.stream().map(p -> p.getId().toString()).collect(Collectors.joining(",")));
        cotacao.getOperadorasOptional().ifPresent(op -> this.operadoras = op.stream().map(o -> o.getId().toString()).collect(Collectors.joining(",")));
        cotacao.getAdministradorasOptional().ifPresent(adm -> this.administradoras = adm.stream().map(a -> a.getId().toString()).collect(Collectors.joining(",")));

    }
}
