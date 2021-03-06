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

    @Transactional
    public void carregaUsuarios(@Observes StartupEvent evt) {
        List<Role> roles = Role.listAll();
        List<Usuario> usuarios = Usuario.listAll();
        if (roles.stream().noneMatch(r -> r.getRole().equals("admin"))) {
            Role.persist("admin");
        }
        if (roles.stream().noneMatch(r -> r.getRole().equals("user"))) {
            Role.persist("user");
        }

        if (usuarios.stream().noneMatch(u -> u.getEmail().equals("admin@admin.com"))) {
            adicionarUsuario("admin", "admin@admin.com", "admin", "admin");
        }
        if (usuarios.stream().noneMatch(u -> u.getEmail().equals("user@user.com"))) {
            adicionarUsuario("user", "user@user.com", "user", "user");
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

    @Transactional
    public static void adicionarUsuario(Usuario usuario) {
        usuario.setPassword(BcryptUtil.bcryptHash(usuario.getPassword()));
        usuario.persist();
    }
}
