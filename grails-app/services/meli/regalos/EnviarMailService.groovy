package meli.regalos

import grails.transaction.Transactional

@Transactional
class EnviarMailService {

    def send(gastosDelMes,regalosDelMes) {
		sendMail {
			to "cabrerajjorge@gmail.com"
			from "jorgejavercabreraver@gmail.com"
			subject "Resumen mensual"
			text " Los gastos del mes son : \$${gastosDelMes} \n Los regalos comprados son ${regalosDelMes.each{}.descripcion}."
		}

    }
}
