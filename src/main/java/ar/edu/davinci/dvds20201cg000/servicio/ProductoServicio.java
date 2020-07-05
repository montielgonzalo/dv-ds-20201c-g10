package ar.edu.davinci.dvds20201cg000.servicio;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import ar.edu.davinci.dvds20201cg000.modelo.Producto;
import ar.edu.davinci.dvds20201cg000.repositorio.ProductoRepositorio;



@Service
public class ProductoServicio {
	
	@Autowired
	ProductoRepositorio productoRepositorio;
	
	public Page<Producto> listarProducto(){
		return null;
	}
	
	public Producto buscarPorId(Long Id) {
		return null;
	}
	
	public Producto grabarProducto(Producto producto) {
		return null;
	}

}
