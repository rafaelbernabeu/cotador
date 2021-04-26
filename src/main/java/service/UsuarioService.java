package service;

import entities.Role;
import entities.Usuario;
import io.quarkus.elytron.security.common.BcryptUtil;
import io.quarkus.runtime.StartupEvent;

import javax.enterprise.event.Observes;
import javax.inject.Singleton;
import javax.transaction.Transactional;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Singleton
public class UsuarioService {

    public static final String ADMIN = "ADMIN";
    public static final String VENDEDOR = "VENDEDOR";
    public static final String OPERADOR = "OPERADOR";
    public static final String POS_VENDAS = "POS-VENDAS";

    public Usuario findUsuarioByEmail(String email) {
        return Usuario.find("email", email).firstResult();
    }

    @Transactional
    public void carregaUsuarios(@Observes StartupEvent evt) {
        List<Role> roles = Role.listAll();
        List<Usuario> usuarios = Usuario.listAll();
        if (roles.stream().noneMatch(r -> r.getRole().equals(ADMIN))) {
            Role.persist(ADMIN);
        }
        if (roles.stream().noneMatch(r -> r.getRole().equals(VENDEDOR))) {
            Role.persist(VENDEDOR);
        }
        if (roles.stream().noneMatch(r -> r.getRole().equals(OPERADOR))) {
            Role.persist(OPERADOR);
        }
        if (roles.stream().noneMatch(r -> r.getRole().equals(POS_VENDAS))) {
            Role.persist(POS_VENDAS);
        }

        if (usuarios.stream().noneMatch(u -> u.getEmail().equals("admin@cotador.com"))) {
            adicionarUsuario("admin", "admin@cotador.com", "admin", ADMIN);
        }
        if (usuarios.stream().noneMatch(u -> u.getEmail().equals("vendedor@cotador.com"))) {
            adicionarUsuario("vendedor", "vendedor@cotador.com", "vendedor", VENDEDOR);
        }
        if (usuarios.stream().noneMatch(u -> u.getEmail().equals("operador@cotador.com"))) {
            adicionarUsuario("operador", "operador@cotador.com", "operador", OPERADOR);
        }
        if (usuarios.stream().noneMatch(u -> u.getEmail().equals("posvendas@cotador.com"))) {
            adicionarUsuario("pos-vendas", "posvendas@cotador.com", "posvendas", POS_VENDAS);
        }
    }

    @Transactional
    public static void adicionarUsuario(String nome, String email, String password, String... roles) {
        Usuario usuario = new Usuario();
        usuario.setNome(nome);
        usuario.setEmail(email);
        usuario.setPassword(BcryptUtil.bcryptHash(password));
        usuario.setRoles(Stream.of(roles).map(r -> (Role) Role.find("role", r).firstResult()).collect(Collectors.toList()));
        usuario.persist();
    }

}
