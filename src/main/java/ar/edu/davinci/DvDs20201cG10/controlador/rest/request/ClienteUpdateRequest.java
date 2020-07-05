package ar.edu.davinci.DvDs20201cG10.controlador.rest.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ClienteUpdateRequest {
	
	private Long id;
	
	private String name;
	
	private String lastName;
	
	private String email;
	
//	private String password;
}