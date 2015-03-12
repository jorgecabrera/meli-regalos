package meli.regalos

class EnviarMailController {

 	/*def mailService;*/
	def enviarMailService;
	def index() {
	}
	def enviarMail () {
		def fecha = new Date();
		float gastosDelMes = 0;
		def coleccionDeRegalos = Regalo.findAll();
		def regalosDelMes = coleccionDeRegalos.findAll {(it.fechaEntrega.getAt(Calendar.MONTH)==fecha.getAt(Calendar.MONTH) )&&(it.fechaEntrega.getAt(Calendar.YEAR)==fecha.getAt(Calendar.YEAR))};
		for(int i=0; i<regalosDelMes.size();i++)
			gastosDelMes += regalosDelMes[i].precio;
		enviarMailService.send(gastosDelMes, regalosDelMes);
		render "Se ha enviado el resumen del mes a cabrerajjorge@gmail.com"
	}
}
