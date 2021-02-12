package entities;

import io.quarkus.elytron.security.common.BcryptUtil;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import io.quarkus.security.jpa.Password;
import io.quarkus.security.jpa.Roles;
import io.quarkus.security.jpa.UserDefinition;
import io.quarkus.security.jpa.Username;
import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Arrays;
import java.util.List;

@Data
@Entity
@UserDefinition
public class Usuario extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;

    @Username
    private String email;

    @Password
    private String password;

    @Roles
    private String roles;

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

