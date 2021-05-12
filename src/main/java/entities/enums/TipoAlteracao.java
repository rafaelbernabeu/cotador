package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum TipoAlteracao {

    EXCLUSAO("Exclusão"), INCLUSAO("Inclusão"), EDICAO("Edição");

    private String nome;

    TipoAlteracao(String nome) {
        this.nome = nome;
    }

    public static TipoAlteracao getByNome(String nome) {
        return Arrays.stream(TipoAlteracao.values()).filter(tipoAlteracao -> tipoAlteracao.nome.equals(nome)).findFirst().orElseThrow(InvalidParameterException::new);
    }

}
