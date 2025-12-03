package com.hellin.despliegue_api_rest.repository;

import com.hellin.despliegue_api_rest.entity.Pet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PetRepository extends JpaRepository<Pet,Long> {

}
