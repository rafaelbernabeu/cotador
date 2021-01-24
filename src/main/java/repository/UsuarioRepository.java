package repository;

import entities.Usuario;
import io.quarkus.hibernate.orm.panache.PanacheRepository;

import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class UsuarioRepository implements PanacheRepository<Usuario> {

    public Usuario findByEmailAndPassword(String email, String password){
        return find("email = ?1 AND password = ?2", email, password).firstResult();
    }

}
