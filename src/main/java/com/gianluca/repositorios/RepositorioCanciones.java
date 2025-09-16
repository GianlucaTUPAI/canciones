package com.gianluca.repositorios;
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.gianluca.modelos.Cancion;

@Repository
public interface RepositorioCanciones extends CrudRepository<Cancion, Long> {
    /* 
     * SELECT * 
     * FROM Cancion;
     */
    @Override
    List<Cancion> findAll();
}