package rest.interfaces;

import entities.Profissao;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface IProfissaoResource extends PanacheEntityResource<Profissao, Long> {}
