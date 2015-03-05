package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def fechaSiguiente = params.get("fecha");
		println "la fecha siguiente es: "+fechaSiguiente;
		def fechaActual;
			if(fechaSiguiente != null) fechaActual = Date.parse('yyyy-MM-dd','fechaSiguiente');
			else	fechaActual =  Date.parse('yyyy-MM-dd','2015-03-29');							//cambiar por new Date() para obtener la fecha actual														//Testear con la fecha = Date.parse('yyyy-MM-dd','2015-03-29')
		println "la fecha actual es: " + fechaActual;
		String mes = fechaActual.getAt(Calendar.MONTH) + 1; 										//por alguna razon Calendar.MONTH devuelve el mes menos 1, es decir si estamos en el mes 03 devuelve 02 por eso sumo 1
		String dia = fechaActual.getAt(Calendar.DAY_OF_MONTH);
		def cumpleanio =mes+"-"+dia;
		[empleadoList:Empleado.findAllByCumpleanio(cumpleanio).each {it.filtrarRegaloPorAnio(fechaActual)},fecha:fechaActual];
	}

}
