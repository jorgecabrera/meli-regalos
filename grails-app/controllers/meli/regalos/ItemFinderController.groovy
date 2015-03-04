package meli.regalos

class ItemFinderController {

    def index() { }
	
	def show(String id) {
		println(id)
		String buscado=params.q?:"";;
		[id:id,buscado:buscado]
	}
}
