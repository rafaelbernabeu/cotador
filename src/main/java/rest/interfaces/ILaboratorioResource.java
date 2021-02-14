package rest.interfaces;

import entities.Laboratorio;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface ILaboratorioResource extends PanacheEntityResource<Laboratorio, Long> {}
