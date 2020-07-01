package ar.edu.davinci.dvds20201cg10.modelo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

@Entity
@Table(name="orden_items")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OrdenItem {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "odi_id")
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ori_ord_id")
    private Orden orden;

    @ManyToOne(targetEntity = Producto.class, cascade = CascadeType.ALL)
    @JoinColumn(name="odi_pro_id", referencedColumnName="pro_id")
    private Producto product;

    @Column(name = "odi_cantidad")
    @NotBlank(message = "*La cantidad es obligatorio")
    @NotEmpty(message = "*Por favor ingrese la cantidad")
    @NotNull
    private BigDecimal quantity;

}

