package meli.regalos

class Empleado {
	String nombre;
	String apellido;
	String cumpleanio;
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
		def anioDeFecha = fecha.getAt(Calendar.YEAR);
		regalos = regalos.findAll{it.anio == anioDeFecha};
	}
}