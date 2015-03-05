package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def fechaActual = params.get("fecha");
		println "la fecha actual es "+fechaActual;
		if(fechaActual == null){ 
				println "entro a este scope"
				fechaActual =  Date.parse('yyyy-MM-dd','1993-03-29').clearTime();
			}																			
		def todosEmpleados = Empleado.findAll();
		def cumpleanieros = todosEmpleados.findAll{empleado -> empleado.fechaNacimiento.getAt(Calendar.MONTH) == fechaActual.getAt(Calendar.MONTH)  && empleado.fechaNacimiento.getAt(Calendar.DAY_OF_MONTH) == fechaActual.getAt(Calendar.DAY_OF_MONTH)}
		println cumpleanieros;
		[empleadoList:cumpleanieros.each { it.filtrarRegaloPorAnio(fechaActual)},fecha:fechaActual];
	}
}
