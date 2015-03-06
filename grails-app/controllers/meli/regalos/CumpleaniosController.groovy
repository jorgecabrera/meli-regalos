package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def fechaActual = params.get("fecha");
			if(fechaActual == null) 
				fechaActual =  Date.parse('yyyy-MM-dd','2016-03-29').clearTime();
			else fechaActual = Date.parse('yyyy-MM-dd',fechaActual).clearTime();																			
		[empleadoList:Regalo.findAllByFechaEntrega(fechaActual),fecha:fechaActual];
	}
}
