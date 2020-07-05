package ar.edu.davinci.dvds20201cg000.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import ar.edu.davinci.dvds20201cg000.modelo.Orden;


@Repository("ordenItemRepository")
public interface OrdenItemRepositorio extends JpaRepository<Orden, Long>{

	//public List<Orden> searchByName(@Param("nombre") String name) throws DataAccessException;

}
