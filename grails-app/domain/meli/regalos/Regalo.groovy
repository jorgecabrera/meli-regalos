package meli.regalos

import helpers.ItemML;



class Regalo {
	String url;
	int anio;
	Date fechaEntrega;
	String descripcion;
	String imagen;
	static belongsTo= [empleado:Empleado];
	static constraints = { empleado nullable:true;
		descripcion nullable:true;
		imagen nullable:true;
		anio nullable:true;
	}
}
