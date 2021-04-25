package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum Adesao {

    LIVRE_ADESAO("Livre Adesão"), COMPULSORIA("Compulsória");

    private String nome;

    Adesao(String nome) {
        this.nome = nome;
    }

    public static Adesao getByNome(String nome) {
        return Arrays.stream(Adesao.values()).filter(adesao -> adesao.nome.equals(nome)).findFirst().orElseThrow(InvalidParameterException::new);
    }

}
