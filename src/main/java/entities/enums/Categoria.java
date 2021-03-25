package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum Categoria {

    ADESAO("Adesão"), EMPRESARIAL("Empresarial");

    private String nome;

    Categoria(String nome) {
        this.nome = nome;
    }

    public static Categoria getByNome(String nome) {
        return Arrays.stream(Categoria.values()).filter(categoria -> categoria.nome.equals(nome)).findFirst().orElseThrow(InvalidParameterException::new);
    }
}
