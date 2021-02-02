package rest.interfaces;

import entities.Hospital;
import io.quarkus.hibernate.orm.rest.data.panache.PanacheEntityResource;
import io.quarkus.rest.data.panache.ResourceProperties;

@ResourceProperties(exposed = false)
public interface IHospitalResource extends PanacheEntityResource<Hospital, Long> {}
