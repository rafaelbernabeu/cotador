package dto;

import entities.Opcao;
import lombok.Data;

@Data
public class OpcaoDTO {

    private Long id;
    private TabelaDTO tabela;
    private ProdutoDTO produto;
    private String acomodacao;
    private Boolean coparticipacao;
    private Float valor0a18anos;
    private Float valor19a23anos;
    private Float valor24a28anos;
    private Float valor29a33anos;
    private Float valor34a38anos;
    private Float valor39a43anos;
    private Float valor44a48anos;
    private Float valor49a53anos;
    private Float valor54a58anos;
    private Float valor59ouMaisAnos;

    public OpcaoDTO() {}
    public OpcaoDTO(Opcao opcao) {
        opcao.toString(); //Gambi: BUG Unable to perform requested lazy initialization - no session and settings disallow loading outside the Session ???
        this.id = opcao.getId();
        this.tabela = new TabelaDTO(opcao.getTabela());
        this.produto = new ProdutoDTO(opcao.getProduto());
        this.acomodacao = opcao.getAcomodacao().getNome();
        this.coparticipacao = opcao.getCoparticipacao();
        this.valor0a18anos = opcao.getValor0a18anos();
        this.valor19a23anos = opcao.getValor19a23anos();
        this.valor24a28anos = opcao.getValor24a28anos();
        this.valor29a33anos = opcao.getValor29a33anos();
        this.valor34a38anos = opcao.getValor34a38anos();
        this.valor39a43anos = opcao.getValor39a43anos();
        this.valor44a48anos = opcao.getValor44a48anos();
        this.valor49a53anos = opcao.getValor49a53anos();
        this.valor54a58anos = opcao.getValor54a58anos();
        this.valor59ouMaisAnos = opcao.getValor59ouMaisAnos();
    }
}
