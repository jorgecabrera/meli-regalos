package meli.regalos

//import ItemML;



class Regalo {
	String url;
	int anio;
	String descripcion;
	String imagen;
	static belongsTo= [empleado:Empleado];
	static constraints = { empleado nullable:true;
		descripcion nullable:true;
		imagen nullable:true
	}
/*	public Regalo(ItemML item){
		imagen=item.imagen;
		descripcion=item.descripcion;
		url=item.url;
	}*/
}
