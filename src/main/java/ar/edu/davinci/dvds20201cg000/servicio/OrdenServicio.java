package ar.edu.davinci.dvds20201cg000.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import ar.edu.davinci.dvds20201cg000.modelo.Orden;
import ar.edu.davinci.dvds20201cg000.modelo.OrdenItem;
import ar.edu.davinci.dvds20201cg000.repositorio.OrdenItemRepositorio;
import ar.edu.davinci.dvds20201cg000.repositorio.OrdenRepositorio;



@Service
public class OrdenServicio {

	@Autowired
	OrdenRepositorio ordenRepositorio;
	
	@Autowired
	OrdenItemRepositorio  ordenItemRepositorio;
	
	
	public Page<Orden> listarOrden(){
		return null;
	}
	
	public Orden buscarPorId(Long Id) {
		return null;
	}
	
	public Orden grabarProducto(Orden producto) {
		return null;
	}
	
	
	public void agregarOrdenItem(Orden orden, OrdenItem item) {
		
 	}
	
	public void borrarOrdenItem(Orden orden, OrdenItem item) {
		
 	}
}
