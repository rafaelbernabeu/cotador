package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum Mes {

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
    DEZEMBRO("Dezembro");

    private String nome;

    Mes(String nome) {
        this.nome = nome;
    }

    public static Mes getByNome(String nome) {
        return Arrays.stream(Mes.values()).filter(mes -> mes.nome.equals(nome)).findFirst().orElseThrow(InvalidParameterException::new);
    }
}
