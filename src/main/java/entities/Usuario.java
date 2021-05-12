package entities;

import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import io.quarkus.security.jpa.Password;
import io.quarkus.security.jpa.Roles;
import io.quarkus.security.jpa.UserDefinition;
import io.quarkus.security.jpa.Username;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Data
@Entity
@UserDefinition
public class Usuario extends PanacheEntityBase implements IEntidade<Usuario> {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nome;

    @Username
    @Column(unique = true)
    private String email;

    @Password
    private String password;

    @Roles
    @ManyToMany
    private List<Role> roles;

}

