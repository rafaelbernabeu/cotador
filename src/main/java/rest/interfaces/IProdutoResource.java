package rest.interfaces;

import entities.Produto;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface IProdutoResource extends PanacheEntityResource<Produto, Long> {}
