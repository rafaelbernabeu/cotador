package rest.interfaces;

import entities.Operadora;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface IOperadoraResource extends PanacheEntityResource<Operadora, Long> {}
