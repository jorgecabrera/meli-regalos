package meli.regalos

import grails.transaction.Transactional
import groovy.json.JsonSlurper
@Transactional
class EnviarMailService {

    def send() {
		float gastosDelMes = 0;
		def fecha = new Date();
		def listaRegalos = Regalo.list();
		def regalosDelMes = listaRegalos.findAll{(it.fechaEntrega.getAt(Calendar.MONTH)==fecha.getAt(Calendar.MONTH) )&&(it.fechaEntrega.getAt(Calendar.YEAR)==fecha.getAt(Calendar.YEAR))};
		regalosDelMes.each{
			def url = new URL("https://api.mercadolibre.com/items/" + it.idItem);
			def str = url.getText(requestProperties: [Accept: "application/json"]); /*toma de la url el texto como jason porque sino es un html, pero es un string!!!*/
			def slurper = new JsonSlurper();										/*sirve para interpretar Json*/
			def json = slurper.parseText(str);										/*parsea el json*/
			gastosDelMes += json.price;												/*del json toma ese atributo*/
		}
		println gastosDelMes;
		sendMail {
			to "cabrerajjorge@gmail.com"
			from "jorgejavercabreraver@gmail.com"
			subject "Resumen mensual"
			text " Los gastos del mes son : \$${gastosDelMes} \n Los regalos comprados son ${regalosDelMes.each{}.descripcion}."
		}
	}
}
