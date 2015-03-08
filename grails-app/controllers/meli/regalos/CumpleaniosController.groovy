package meli.regalos

class CumpleaniosController {
	def index(){
		def fechaActual = params.get("fecha");
		if(fechaActual == null)
			fechaActual =  new Date().clearTime();
		else fechaActual = Date.parse('yyyy-MM-dd',fechaActual).clearTime();
		[empleadoList:Regalo.findAllByFechaEntrega(fechaActual),fecha:fechaActual];
	}
}
