package rest.interfaces;

import entities.Tabela;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface ITabelaResource extends PanacheEntityResource<Tabela, Long> {}
