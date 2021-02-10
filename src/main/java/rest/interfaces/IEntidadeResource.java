package rest.interfaces;

import entities.Entidade;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface IEntidadeResource extends PanacheEntityResource<Entidade, Long> {}
