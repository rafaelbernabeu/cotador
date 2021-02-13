package rest.interfaces;

import entities.Usuario;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface IUsuarioResource extends PanacheEntityResource<Usuario, Long> {}
