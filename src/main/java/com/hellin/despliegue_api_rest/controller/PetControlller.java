package com.hellin.despliegue_api_rest.controller;

import com.hellin.despliegue_api_rest.entity.Pet;
import com.hellin.despliegue_api_rest.repository.PetRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/pet")
/**
 * En este controlador se exponen todos los endpoint referentes a Pets {@link Pet}
 * @version 1.0
 * @author Cipriano García Herz
 */
public class PetControlller {

    private PetRepository petRepository;

    /**
     * Constructor del controlador rest
     * @param petRepository Repositorio para consultar en BD.
     */
    public PetControlller(PetRepository petRepository) {
        this.petRepository = petRepository;
    }

    /**
     * Este metodo devuelven el listado de pets
     * @return List<Pet> información de cada mascota
     */
    @GetMapping("/list")
    public List<Pet> hello(){
        return petRepository.findAll();
    }
}
