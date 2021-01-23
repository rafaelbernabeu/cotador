package service;

import entities.Hospital;
import io.quarkus.runtime.StartupEvent;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.event.Observes;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.transaction.Transactional;

@ApplicationScoped
public class HospitalService {

    @Inject
    EntityManager entityManager;

    void onStart(@Observes StartupEvent ev) {
        Hospital hospital = new Hospital();
        salvaHospital(hospital);
    }

    @Transactional
    public void salvaHospital(Hospital hospital) {
        entityManager.persist(hospital);
    }

}
