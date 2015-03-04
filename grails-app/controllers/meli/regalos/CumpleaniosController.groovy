package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def miFecha = params.get("fechaSiguiente");
		println "la fecha actual es "+miFecha;
		if(miFecha!=null){
			def fechaActual = Date.parse('yyyy-mm-dd',miFecha);
			println "la fehca parseada es"+fechaActual;
			[empleadoList:Empleado.findAllByFechaNacimiento(fechaActual),fecha:fechaActual];
		}else{
			def fechaActual = Date.parse('yyyy-mm-dd','1993-03-29');
			[empleadoList:Empleado.findAllByFechaNacimiento(fechaActual),fecha:fechaActual];
		}
	}

}
