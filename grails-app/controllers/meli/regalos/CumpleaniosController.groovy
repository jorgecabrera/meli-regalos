package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		//def fechaSiguiente = params.get.("fechaSiguiente");
		def fecha = Date.parse('yyyy-mm-dd','1993-03-29');
		[empleadoList:Empleado.findAllByFechaNacimiento(fecha)];
	}
}
