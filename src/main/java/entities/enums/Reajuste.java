package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum Reajuste {

    JANEIRO("Janeiro"),
    FEVEREIRO("Fevereiro"),
    MARCO("Março"),
    ABRIL("Abril"),
    MAIO("Maio"),
    JUNHO("Junho"),
    JULHO("Julho"),
    AGOSTO("Agosto"),
    SETEMBRO("Setembro"),
    OUTUBRO("Outubro"),
    NOVEMBRO("Novembro"),
    DEZEMBRO("Dezembro"),
    ANIV_DO_CTT("Aniversário do Contrato");

    private String nome;

    Reajuste(String nome) {
        this.nome = nome;
    }

    public static Reajuste getByNome(String nome) {
        return Arrays.stream(Reajuste.values()).filter(reajuste -> reajuste.nome.equals(nome)).findFirst().orElseThrow(InvalidParameterException::new);
    }
}
