package entities.enums;

import lombok.Getter;

import java.security.InvalidParameterException;
import java.util.Arrays;

@Getter
public enum TipoEntidade {

    USUARIO("Usuário"),
    ADMINISTRADORA("Administradora"),
    OPERADORA("Operadora"),
    PROFISSAO("Profissão"),
    ENTIDADE("Entidade"),
    LABORATORIO("Laboratório"),
    HOSPITAL("Hospital"),
    PRODUTO("Produto"),
    TABELA("Tabela"),
    OPCAO("Opção");

    private String nome;

    TipoEntidade(String nome) {
        this.nome = nome;
    }

    public static TipoEntidade getByNome(String nome) {
        return Arrays.stream(TipoEntidade.values()).filter(tipoEntidade -> tipoEntidade.nome.equals(nome)).findFirst().orElseThrow(InvalidParameterException::new);
    }
}
