package entities.enums;

public enum Acomodacao {

    APARTAMENTO("Apartamento"), ENFERMARIA("Enfermaria");

    private String nome;

    Acomodacao(String nome) {
        this.nome = nome;
    }
}
