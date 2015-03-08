package meli.regalos

class EnviarMailController {

 	def mailService;
	def index() {
		def fecha = new Date();
		float gastosDelMes = 0;
		def coleccionDeRegalos = Regalo.findAll();
		def regalosDelMes = coleccionDeRegalos.findAll {(it.fechaEntrega.getAt(Calendar.MONTH)==fecha.getAt(Calendar.MONTH) )&&(it.fechaEntrega.getAt(Calendar.YEAR)==fecha.getAt(Calendar.YEAR) )};
		for(int i=0; i<regalosDelMes.size();i++)
			gastosDelMes += regalosDelMes[i].precio
		println "los gastos del mes son :"+gastosDelMes;
			enviarMail;
	}
	def enviarMail = {
		mailService.sendMail{
			to "jorgejcabrera@hotmail.com.ar"
			from "urieljorgemysler@hotmail.com"
			subject "Hello John"
			text "probando mails"
		}
		render "OK"
	}
}
