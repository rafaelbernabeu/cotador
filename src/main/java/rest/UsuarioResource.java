package rest;

import entities.Usuario;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

import javax.annotation.security.RolesAllowed;

@RolesAllowed("admin")
@ResourceProperties(path = "/api/usuario")
public interface UsuarioResource extends PanacheEntityResource<Usuario, Long> {}
