package meli.regalos

class Empleado {
	String nombre;
	String apellido;
	Date fechaNacimiento;
	static hasMany = [regalos: Regalo]
    static constraints = {
    }
	public String toString(){
		return nombre +' ' +apellido;
	}
}