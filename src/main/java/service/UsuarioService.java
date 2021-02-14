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
        Role.persist("admin", "user" );
        adicionarUsuario("admin", "admin@admin.com", "admin", "admin");
        adicionarUsuario("user", "user@user.com", "user", "user");
    }

    @Transactional
    public List<Role> atualizarRolesDoUsuario(Long id, List<Role> roles) {
        Usuario usuario = Usuario.findById(id);
        usuario.setRoles(roles);
        usuario.persistAndFlush();
        return usuario.getRoles();
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
