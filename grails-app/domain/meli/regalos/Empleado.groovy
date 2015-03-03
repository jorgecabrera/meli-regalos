package meli.regalos

class Empleado {
	String nombre;
	String apellido;
	Date fechaNacimiento;
	static hasMany = [regalos: Regalo]
    static constraints = {
    }
	def agregarRegalo(Regalo regalo){
		regalos << regalo;
	}
	def borrarRegalo(regalo){
		regalos.remove(regalo);
	}
	public Empleado(){
		regalos=new ArrayList<Regalo>();
	}
}