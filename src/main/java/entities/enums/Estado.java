package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum Estado {

    ACRE("AC", "Acre"),
    ALAGOAS("AL", "Alagoas"),
    AMAZONAS("AM", "Amazonas"),
    AMAPA("AP", "Amapá"),
    BAHIA("BA", "Bahia"),
    CEARA("CE", "Ceará"),
    DISTRITO_FEDERAL("DF", "Distrito Federal"),
    ESPIRITO_SANTO("ES", "Espírito Santo"),
    GOIAS("GO", "Goiás"),
    MARANHAO("MA", "Maranhão"),
    MINAS_GERAIS("MG", "Minas Gerais"),
    MATO_GROSSO_DO_SUL("MS", "Mato Grosso do Sul"),
    MATO_GROSSO("MT", "Mato Grosso"),
    PARA("PA", "Pará"),
    PARAIBA("PB", "Paraíba"),
    PERNAMBUCO("PE", "Pernambuco"),
    PIAUI("PI", "Piauí"),
    PARANA("PR", "Paraná"),
    RIO_DE_JANEIRO("RJ", "Rio de Janeiro"),
    RIO_GRANDE_DO_NORTE("RN", "Rio Grande do Norte"),
    RONDONIA("RO", "Rondônia"),
    RORAIMA("RR", "Roraima"),
    RIO_GRANDE_DO_SUL("RS", "Rio Grande do Sul"),
    SANTA_CATARINA("SC", "Santa Catarina"),
    SERGIPE("SE", "Sergipe"),
    SAO_PAULO("SP", "São Paulo"),
    TOCANTINS("TO", "Tocantins");

    private final String nome;
    private final String sigla;

    Estado(String sigla, String nome) {
        this.sigla = sigla;
        this.nome = nome;
    }

    public static Estado getBySigla(String sigla) {
        return Arrays.stream(Estado.values()).filter(estado -> estado.sigla.equals(sigla)).findAny().orElseThrow(InvalidParameterException::new);
    }
}
