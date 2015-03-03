package meli.regalos

class Regalo {
	String url;
	int anio;
	static belongsTo= [empleado:Empleado];
	static constraints = { empleado nullable:true
	}
}
