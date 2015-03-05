package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def fechaActual = Date.parse('yyyy-mm-dd','1993-03-29');
		[empleadoList:Empleado.findAllByFechaNacimiento(fechaActual).each {it.filtrarRegalosPorFecha(Date.parse('yyyy-mm-dd','2016-03-29'))},fecha:fechaActual];
	}

}
