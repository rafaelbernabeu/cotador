package util;

import dto.OpcaoDTO;
import dto.ProdutoDTO;
import dto.TabelaDTO;

import java.util.stream.Stream;

import static java.util.Comparator.comparing;

public class SortUtil {

    private SortUtil(){}

    public static Stream<OpcaoDTO> sortOpcoes(Stream<OpcaoDTO> streamOpcoes) {
        return streamOpcoes
                .sorted(comparing(opcaoDTO -> opcaoDTO.getProduto().getAbrangencia()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getProduto().getNome()))
                .sorted(comparing(OpcaoDTO::getAcomodacao))
                .sorted(comparing(OpcaoDTO::getCoparticipacao))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getNome()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getOperadora().getNome()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getAdministradora() == null ? "Z" : opcaoDTO.getTabela().getAdministradora().getNome()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getEstado().getSigla()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getCategoria()));
    }

    public static Stream<TabelaDTO> sortTabelas(Stream<TabelaDTO> streamTabelas) {
        return streamTabelas
                .sorted(comparing(TabelaDTO::getNome))
                .sorted(comparing(tabelaDTO -> tabelaDTO.getOperadora().getNome()))
                .sorted(comparing(tabelaDTO -> tabelaDTO.getAdministradora() == null ? "Z" : tabelaDTO.getAdministradora().getNome()))
                .sorted(comparing(tabelaDTO -> tabelaDTO.getEstado().getNome()));
    }

    public static Stream<ProdutoDTO> sortProdutos(Stream<ProdutoDTO> streamProdutos) {
        return streamProdutos
                .sorted(comparing(ProdutoDTO::getNome))
                .sorted(comparing(produtoDTO -> produtoDTO.getOperadora().getNome()));
    }

}
