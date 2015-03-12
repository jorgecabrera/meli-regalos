package meli.regalos



class EnviarMailController {

	def enviarMailService;
	def index() {
	}
	def enviarMail () {
		enviarMailService.send();
		render "Se ha enviado el resumen del mes a cabrerajjorge@gmail.com"
	}
}
