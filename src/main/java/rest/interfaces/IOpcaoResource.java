package rest.interfaces;

import entities.Opcao;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface IOpcaoResource extends PanacheEntityResource<Opcao, Long> {}
