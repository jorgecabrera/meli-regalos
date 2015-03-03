package meli.regalos

class Empleado {
	String nombre="";
	String apellido="";
	Date fechaNacimiento=new Date();
	static hasMany = {Regalo:regalos}
    static constraints = {
    }
	def agregarRegalo(Regalo regalo){
		regalos << regalo;
	}
	def borrarRegalo(regalo){
		
	}
}
