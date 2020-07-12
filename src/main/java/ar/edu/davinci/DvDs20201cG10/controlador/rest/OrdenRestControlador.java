package ar.edu.davinci.DvDs20201cG10.controlador.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import ar.edu.davinci.DvDs20201cG10.controlador.MyRestApp;
import ar.edu.davinci.DvDs20201cG10.controlador.rest.response.OrdenResponse;
import ar.edu.davinci.DvDs20201cG10.modelo.Orden;
import ar.edu.davinci.DvDs20201cG10.servicio.OrdenServicio;
import ma.glasnost.orika.MapperFacade;

@RestController
public class OrdenRestControlador extends MyRestApp {

    private final Logger LOGGER = LoggerFactory.getLogger(OrdenRestControlador.class);

    private final OrdenServicio ordenServicio;

    private final MapperFacade mapper;

    @Autowired
    public OrdenRestControlador(final OrdenServicio ordenServicio, final MapperFacade mapper) {
        this.ordenServicio = ordenServicio;
        this.mapper = mapper;
    }

    /**
     * Lista todos los ordenes.
     *
     * @return
     */
    @GetMapping(path = "/ordenes")
    public Page<OrdenResponse> getOrdenes(Pageable pageable) {
        LOGGER.info("listar todos los ordenes paginados");

        Page<OrdenResponse> ordenResponse = null;
        Page<Orden> ordenPage = null;
        try {
            ordenPage = ordenServicio.listarOrden(pageable);
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            e.printStackTrace();
        }
        try {
            ordenResponse = ordenPage.map(orden -> mapper.map(orden, OrdenResponse.class));
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            e.printStackTrace();
        }
        return ordenResponse;
    }


}
