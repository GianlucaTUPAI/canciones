package com.gianluca.controladores;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.gianluca.modelos.Cancion;
import com.gianluca.servicios.ServicioCanciones;

import jakarta.validation.Valid;

@Controller
public class ControladorCanciones {
    @Autowired
    private final ServicioCanciones servicioCanciones;

    public ControladorCanciones(ServicioCanciones servicioCanciones) {
        this.servicioCanciones = servicioCanciones;
    }
    

    @GetMapping("/canciones")
    public String desplegarCanciones(Model modelo) {
        List<Cancion> canciones = servicioCanciones.obtenerTodasLasCanciones();
        modelo.addAttribute("canciones", canciones);
        return "canciones"; 
    }

    @GetMapping("/canciones/detalle/{idCancion}")
    public String desplegarDetalleCancion(@PathVariable("idCancion") Long idCancion, Model modelo) {
        Cancion cancion = this.servicioCanciones.obtenerCancionPorId(idCancion).orElse(null);
        modelo.addAttribute("cancion", cancion);
        return "detalleCancion";
    }

    @GetMapping("/canciones/formulario/agregar")
    public String procesarAgregarCancion(@ModelAttribute("nuevaCancion") Cancion nuevaCancion, Model modelo) {
        modelo.addAttribute("cancion", new Cancion());
        return "agregarCancion";
    }

    @GetMapping("/canciones/formulario/actualizar/{idCancion}")
    public String formularioActualizarCancion(@PathVariable Long idCancion,
                                              Model modelo) {
        Cancion cancion = this.servicioCanciones.obtenerCancionPorId(idCancion).orElse(null);
        modelo.addAttribute("actualizaCancion", cancion);
        return "formularioActualizar";
    }

    @DeleteMapping("/canciones/eliminar/{idCancion}")
    public String procesarEliminarCancion(@PathVariable("idCancion") Long idCancion) {
        this.servicioCanciones.eliminaCancion(idCancion);
        return "redirect:/canciones";
    }

    @PostMapping("/canciones/procesa/agregar")
    public String formularioAgregarCancion(@Valid @ModelAttribute("nuevaCancion") Cancion nuevaCancion, 
                                            BindingResult validaciones) {
        if(validaciones.hasErrors()){
        return "agregarCancion";
        }
        this.servicioCanciones.agregarCancion(nuevaCancion);
        return "redirect:/canciones";
    }

    @PutMapping("/canciones/formulario/actualizar/{idCancion}")
    public String procesarActualizarCancion(@PathVariable Long idCancion,
                                            @Valid @ModelAttribute("actualizaCancion") Cancion actualizaCancion,
                                            BindingResult validaciones) {
        if (validaciones.hasErrors()) {
            return "formularioActualizar";
        }
        actualizaCancion.setId(idCancion);
        this.servicioCanciones.actualizarCancion(actualizaCancion);
        return "redirect:/canciones/detalle/" + idCancion;
    }
}


