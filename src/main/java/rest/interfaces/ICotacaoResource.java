package rest.interfaces;

import entities.Administradora;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface ICotacaoResource extends PanacheEntityResource<Administradora, Long> {}
