package dto;

import entities.Coparticipacao;
import entities.Hospital;
import entities.Operadora;
import entities.Produto;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
public class ProdutoDTO {

    private Long id;
    private String nome;
    private Boolean ativo;
    private Float reembolso;
    private String observacao;
    private String abrangencia;
    private Operadora operadora;
    private Coparticipacao coparticipacao;
    private List<LaboratorioDTO> laboratorios;
    private List<Hospital> hospitais;

    public ProdutoDTO(){}
    public ProdutoDTO(Produto produto) {
        this.id = produto.getId();
        this.nome = produto.getNome();
        this.ativo = produto.getAtivo();
        this.reembolso = produto.getReembolso();
        this.observacao = produto.getObservacao();
        this.abrangencia = produto.getAbrangencia().getNome();
        this.operadora = produto.getOperadora();
        this.coparticipacao = produto.getCoparticipacao();
        this.laboratorios = produto.getLaboratorios().stream().map(LaboratorioDTO::new).collect(Collectors.toList());
        this.hospitais = produto.getHospitais();
    }
}
