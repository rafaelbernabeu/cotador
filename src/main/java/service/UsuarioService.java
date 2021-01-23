package service;

import entities.Usuario;
import io.quarkus.runtime.StartupEvent;

import javax.enterprise.event.Observes;
import javax.inject.Singleton;
import javax.transaction.Transactional;

@Singleton
public class UsuarioService {

    @Transactional
    public void loadUsers(@Observes StartupEvent evt) {
        // reset and load all test users
        Usuario.deleteAll();
        Usuario.add("admin", "admin@admin.com", "admin", "admin");
        Usuario.add("user", "user@user.com", "user", "user");
    }

}
