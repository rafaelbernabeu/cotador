package entities;

import io.quarkus.elytron.security.common.BcryptUtil;
import io.quarkus.hibernate.orm.panache.PanacheEntity;
import io.quarkus.security.jpa.*;
import lombok.Data;

import javax.persistence.Entity;
import java.util.Arrays;
import java.util.List;

@Data
@Entity
@UserDefinition
public class Usuario extends PanacheEntity {

    String nome;

    @Username
    String email;

    @Password
    String password;

    @Roles
    String roles;

    public List<String> getRolesList() {
        return Arrays.asList(roles.split(","));
    }

    /**
     * Adds a new user in the database
     * @param nome the user name
     * @param password the unencrypted password (it will be encrypted with bcrypt)
     * @param roles the comma-separated roles
     */
    public static void add(String nome, String email, String password, String roles) {
        Usuario usuario = new Usuario();
        usuario.nome = nome;
        usuario.email = email;
        usuario.password = BcryptUtil.bcryptHash(password);
        usuario.roles = roles;
        usuario.persist();
    }

}

