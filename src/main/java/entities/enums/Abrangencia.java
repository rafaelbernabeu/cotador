package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum Abrangencia {

    REGIONAL("Regional"), NACIONAL("Nacional"), GRUPO_DE_ESTADOS("Grupo de Estados");

    private String nome;

    Abrangencia(String nome) {
        this.nome = nome;
    }

    public static Abrangencia getByNome(String nome) {
        return Arrays.stream(Abrangencia.values()).filter(abrangencia -> abrangencia.nome.equals(nome)).findFirst().orElseThrow(InvalidParameterException::new);
    }
}
