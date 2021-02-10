package service;

import entities.Hospital;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.transaction.Transactional;

@ApplicationScoped
public class HospitalService {

    @Inject
    EntityManager entityManager;

    @Transactional
    public void salvaHospital(Hospital hospital) {
        entityManager.persist(hospital);
    }

}
