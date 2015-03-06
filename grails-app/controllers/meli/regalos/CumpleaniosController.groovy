package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def fechaActual = params.get("fecha");
		println "la fecha actual es "+fechaActual;
		if(fechaActual == null){ 
				println "entro a este scope"
				fechaActual =  Date.parse('yyyy-MM-dd','2016-03-29').clearTime();
			}																			
		[empleadoList:Regalo.findAllByFechaEntrega(fechaActual),fecha:fechaActual];
	}
}
