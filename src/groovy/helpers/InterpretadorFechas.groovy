package helpers
import java.util.Date;

class InterpretadorFechas {

	public static String interpretar(Date fecha){
		String anio = fecha.getAt(Calendar.YEAR);
		String mes = fecha.getAt(Calendar.MONTH) + 1;
		String dia = fecha.getAt(Calendar.DAY_OF_MONTH);
		mes = (mes.length()<2) ? '0'+mes : mes;
		dia = (dia.length()<2) ? '0'+dia : dia;
		def fechaParseada = anio +'-'+ mes +'-'+ dia;
		return fechaParseada; 
	}
}
