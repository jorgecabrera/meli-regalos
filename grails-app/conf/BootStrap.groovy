import meli.regalos.*;

class BootStrap {

    def init = { servletContext -> crearEmpleados();
		
    }
    def destroy = {
    }
	def crearEmpleados(){
		def jorge = new Empleado(nombre: "Jorge", apellido: "Cabrera",fechaNacimiento:Date.parse('yyyy-MM-dd','1991-12-06').clearTime());
		def uriel = new Empleado(nombre: "Uriel", apellido:"Mysler", fechaNacimiento:Date.parse('yyyy-MM-dd','1993-03-29').clearTime());
		def sebastian = new Empleado(nombre: "Sebastian", apellido:"Garcia",fechaNacimiento:Date.parse('yyyy-MM-dd','1993-03-04').clearTime());
		def marcos = new Empleado(nombre: "Marcos", apellido:"Perez",fechaNacimiento:Date.parse('yyyy-MM-dd','1993-03-04').clearTime());
		def eric = new Empleado(nombre: "Eric" , apellido: "Brandwein",fechaNacimiento:Date.parse('yyyy-MM-dd','1997-04-01').clearTime());
		def francisco = new Empleado(nombre: "Francisco" , apellido: "Curdi",fechaNacimiento:Date.parse('yyyy-MM-dd','1997-03-29').clearTime());
		def pelota = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2015-12-06').clearTime(), url:"http://articulo.mercadolibre.com.ar/MLA-542474342-balon-oficial-velez-oficial-_JM",precio: 250.00);
		pelota.descripcion="pelota";
		def remera = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2015-03-29').clearTime(), url: "http://articulo.mercadolibre.com.ar/MLA-548375082-remera-paez-gris-con-bolsillo-verde-_JM",precio: 190.00);
		remera.descripcion="remera"
		def tablet = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2016-03-29').clearTime(), url: "http://http://articulo.mercadolibre.com.ar/MLA-545992298-tablet-samsung-galaxy-tab-4-7-quad-core-12ghz-8gb-wifi--_JM",precio:2500.00);
		tablet.descripcion="tablet"
		def iphone = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2015-03-29').clearTime(), url: "http://articulo.mercadolibre.com.ar/MLA-548761314-apple-iphone-6-16gb-retina-chip-a8-sellado-garantia-libre-_JM",precio:12500.00);
		iphone.descripcion="iphone";
		jorge.addToRegalos(pelota);
		uriel.addToRegalos(remera);
		uriel.addToRegalos(tablet);
		marcos.addToRegalos(iphone);
		jorge.save(flush:true);
		marcos.save(flush:true);
		uriel.save(flush:true);
		eric.save(flush:true);
		francisco.save(flush:true);
		sebastian.save(flush:true);
		pelota.save(flush:true);
		remera.save(flush:true);
		tablet.save(flush:true);
	}
}
