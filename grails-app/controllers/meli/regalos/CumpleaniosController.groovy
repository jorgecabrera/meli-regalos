package meli.regalos 

class CumpleaniosController {
	def index(){
		def fechaActual = (params.fecha ? Date.parse('yyyy-MM-dd',params.fecha) : new Date()).clearTime()
		[empleadoList:Regalo.findAllByFechaEntrega(fechaActual),fecha:fechaActual];
	}
}
