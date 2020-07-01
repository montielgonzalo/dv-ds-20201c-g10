package ar.edu.davinci.dvds20201cg10.controlador.rest.request;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ClienteInsertRequest {
		
	private String name;
	
	private String lastName;
	
	private String email;
	
	private String password;
}