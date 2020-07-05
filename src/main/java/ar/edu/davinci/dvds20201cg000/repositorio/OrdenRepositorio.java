package ar.edu.davinci.dvds20201cg000.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ar.edu.davinci.dvds20201cg000.modelo.OrdenItem;



@Repository("ordenRepository")
public interface OrdenRepositorio extends JpaRepository<OrdenItem, Long>{

	//public List<Orden> searchByName(@Param("nombre") String name) throws DataAccessException;

}
