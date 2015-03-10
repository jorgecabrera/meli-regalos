package meli.regalos

class EnviarMailController {

 	def mailService;
	def index() {
	}
	def enviarMail () {
		def fecha = new Date();
		float gastosDelMes = 0;
		def coleccionDeRegalos = Regalo.findAll();
		def regalosDelMes = coleccionDeRegalos.findAll {(it.fechaEntrega.getAt(Calendar.MONTH)==fecha.getAt(Calendar.MONTH) )&&(it.fechaEntrega.getAt(Calendar.YEAR)==fecha.getAt(Calendar.YEAR))};
		for(int i=0; i<regalosDelMes.size();i++)
			gastosDelMes += regalosDelMes[i].precio;
		mailService.sendMail{
			to "jorgejcabrera@hotmail.com.ar"
			from "urieljorgemysler@hotmail.com"
			subject "Resumen mensual"
			text " Los gastos del mes son : \$${gastosDelMes} \n Los regalos comprados son ${regalosDelMes.each{}.descripcion}."
		}
		render "Se ha enviado el resumen del mes a jorgejcabrera@hotmail.com.ar"
	}
}
