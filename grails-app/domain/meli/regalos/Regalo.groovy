package meli.regalos

import helpers.ItemML;



class Regalo {
	String url;
	Date fechaEntrega;
	String descripcion;
	String imagen;
	int anio;
	String idItem;
	float precio;
	static belongsTo= [empleado:Empleado];
	static constraints = { empleado nullable:true;
		descripcion nullable:true;
		imagen nullable:true;
		precio nullable:true;
		fechaEntrega nullable:true;
		anio nullable:true;
		idItem nullable:true;
	}
}
