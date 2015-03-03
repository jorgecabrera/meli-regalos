import meli.regalos.*;

class BootStrap {

    def init = { servletContext -> crearEmpleados();
		
    }
    def destroy = {
    }
	def crearEmpleados(){
		def jorge = new Empleado(nombre: "Jorge", apellido: "Cabrera", fechaNacimiento:Date.parse('yyyy-mm-dd','1991-06-12'));
		def uriel = new Empleado(nombre: "Uriel", apellido:"Mysler", fechaNacimiento:Date.parse('yyyy-mm-dd','1993-03-29'));
		def erik = new Empleado(nombre: "Erik" , apellido: "Brandwein", fechaNacimiento:Date.parse('yyyy-mm-dd','1997-04-01'));
		def pelota = new Regalo(anio: 2015, url:"http://articulo.mercadolibre.com.ar/MLA-542474342-balon-oficial-velez-oficial-_JM");
		def remera = new Regalo(anio: 2015, url: "http://articulo.mercadolibre.com.ar/MLA-548375082-remera-paez-gris-con-bolsillo-verde-_JM");
		jorge.agregarRegalo(pelota);
		uriel.agregarRegalo(remera);
		jorge.save(flush:true);
		uriel.save(flush:true);
		erik.save(flush:true);
		pelota.save(flush:true);
		remera.save(flush:true);
	}
}
