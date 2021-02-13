package rest.interfaces;

import entities.Role;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface IRoleResource extends PanacheEntityResource<Role, Long> {}
