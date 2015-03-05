package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def	fechaActual = Date.parse('yyyy-MM-dd','1993-03-29');
		String mes = fechaActual.getAt(Calendar.MONTH) + 1; 				//por alguna razon Calendar.MONTH devuelve el mes menos 1, es decir si estamos en el mes 03 devuelve 02 por eso sumo 1
		String dia = fechaActual.getAt(Calendar.DAY_OF_MONTH);
		def cumpleanio =mes+"-"+dia;
		[empleadoList:Empleado.findAllByCumpleanio(cumpleanio).each {it.filtrarRegaloPorAnio(Date.parse('yyyy-mm-dd','2016-03-29'))},fecha:fechaActual];
	}

}
