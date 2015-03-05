package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def fechaActual = params.get("fecha");
			if(fechaActual == null){ 
				println "entro a este scope"
				fechaActual =  Date.parse('yyyy-MM-dd','2016-03-29');
			}																			
		def todosEmpleados = Empleado.findAll();
		def cumpleanieros = todosEmpleados.findAll{empleado -> empleado.fechaNacimiento.getAt(Calendar.MONTH) == fechaActual.getAt(Calendar.MONTH)  && empleado.fechaNacimiento.getAt(Calendar.DAY_OF_MONTH) == fechaActual.getAt(Calendar.DAY_OF_MONTH)}
		println cumpleanieros;
		[empleadoList:cumpleanieros.each { it.filtrarRegaloPorAnio(fechaActual)},fecha:fechaActual];
	}
	def cumpleanioSiguiente(){
		def fechaActual = params.get("fecha");
		println "la fecha actual es "+fechaActual;
		redirect(controller: "Cumpleanios",action: "verCumpleanios", params: [fecha: "fechaActual"]);
	}
	def cumpleanioAnterior(){
		def fechaActual = params.get("fecha");
		println "la fecha actual es "+fechaActual;
		redirect(controller: "Cumpleanios",action: "verCumpleanios", params:[fecha:"fechaActual"]);
	}	
}
