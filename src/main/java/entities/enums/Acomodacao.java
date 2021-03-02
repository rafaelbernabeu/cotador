package entities.enums;

import lombok.Getter;

@Getter
public enum Acomodacao {

    APARTAMENTO("Apartamento"), ENFERMARIA("Enfermaria");

    private String nome;

    Acomodacao(String nome) {
        this.nome = nome;
    }
}
