package ar.edu.davinci.DvDs20201cG10.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ar.edu.davinci.DvDs20201cG10.modelo.OrdenItem;



@Repository("ordenRepository")
public interface OrdenRepositorio extends JpaRepository<OrdenItem, Long>{

	//public List<Orden> searchByName(@Param("nombre") String name) throws DataAccessException;

}
