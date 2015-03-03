package meli.regalos

class Regalo {
	String url ;
	Date fechaDeAsignacion = new Date();
	static belongsTo= [empleado:Empleado];
	static constraints = {
	}
	def void setUrl(String miUrl){
		url = miUrl;
	}
}
