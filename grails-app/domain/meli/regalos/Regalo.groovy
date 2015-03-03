package meli.regalos

class Regalo {
	String url;
	int anio;
	String descripcion;
	static belongsTo= [empleado:Empleado];
	static constraints = { empleado nullable:true;descripcion nullable:true
	}
}
