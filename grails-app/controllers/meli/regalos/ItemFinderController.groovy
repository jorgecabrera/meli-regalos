package meli.regalos

class ItemFinderController {

    def index() {}
	
	def show(String id) {
		println(id)
		String buscado=params.q?:"";;
		def idEmpleado=params.idEmpleado?:0;
		[id:id,buscado:buscado,idEmpleado:idEmpleado]
	}
}
