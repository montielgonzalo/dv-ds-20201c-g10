package ar.edu.davinci.DvDs20201cG10.controlador.rest.request;

import java.math.BigDecimal;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductoInsertRequest {

    private String name;

    private BigDecimal price;

}

