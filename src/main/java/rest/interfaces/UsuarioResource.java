package rest.interfaces;

import entities.Usuario;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(path = "/api/usuario")
public interface UsuarioResource extends PanacheEntityResource<Usuario, Long> {}
