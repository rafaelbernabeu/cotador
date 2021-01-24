package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntity;
import lombok.Data;

import javax.persistence.Entity;

@Data
@Entity
//@UserDefinition
public class Usuario extends PanacheEntity {

    String nome;

//    @Username
    String email;

//    @Password
    String password;

//    @Roles
    public String role;

    /**
     * Adds a new user in the database
     * @param nome the user name
     * @param password the unencrypted password (it will be encrypted with bcrypt)
     * @param role the comma-separated roles
     */
    public static void add(String nome, String email, String password, String role) {
        Usuario usuario = new Usuario();
        usuario.nome = nome;
        usuario.email = email;
//        usuario.password = BcryptUtil.bcryptHash(password);
        usuario.password = password;
        usuario.role = role;
        usuario.persist();
    }

}

