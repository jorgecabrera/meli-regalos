package meli.regalos

class Empleado {
	String nombre;
	String apellido;
	Date fechaNacimiento;
	static hasMany = [regalos: Regalo]
    static constraints = {
    }
	def agregarRegalo(Regalo regalo){
		if(regalos << regalo){
			regalo.empleado=this;	
		};
	}
	def borrarRegalo(regalo){
		regalos.remove(regalo);
	}
	public Empleado(){
		regalos=new ArrayList<Regalo>();
	}
	public String toString(){
		return nombre +' ' +apellido;
	}
	def filtrarRegalosPorFecha(Date fecha){
		def regalo = regalos.findAll{ it.anio = anioDeFecha }.flatten();
		regalos = regalo;
	}
}