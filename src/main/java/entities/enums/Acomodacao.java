package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum Acomodacao {

    APARTAMENTO("Apartamento"), ENFERMARIA("Enfermaria");

    private String nome;

    Acomodacao(String nome) {
        this.nome = nome;
    }

    public static Acomodacao getByNome(String nome) {
        return Arrays.stream(Acomodacao.values()).filter(acomodacao -> acomodacao.nome.equals(nome)).findFirst().orElseThrow(InvalidParameterException::new);
    }
}
