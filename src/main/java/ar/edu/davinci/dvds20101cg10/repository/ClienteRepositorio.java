package ar.edu.davinci.dvds20101cg10.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ar.edu.davinci.dvds20101cg10.model.Cliente;


@Repository("clienteRepositorio")
public interface ClienteRepositorio extends JpaRepository<Cliente, Long> {

}
