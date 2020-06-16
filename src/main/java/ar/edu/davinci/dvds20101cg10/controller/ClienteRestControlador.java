package ar.edu.davinci.dvds20101cg10.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import ar.edu.davinci.dvds20101cg10.controller.MyRestApp;
import ar.edu.davinci.dvds20101cg10.model.Cliente;
import ar.edu.davinci.dvds20101cg10.repository.ClienteRepositorio;

@RestController
public class ClienteRestControlador extends MyRestApp {

    @Autowired
    private ClienteRepositorio clienteRepositorio;

    @GetMapping(path="/clientes/listar")
    public @ResponseBody Iterable<Cliente> getClientes() {
        return clienteRepositorio.findAll();
    }
}
