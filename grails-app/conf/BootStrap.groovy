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
		def marcos = new Empleado(nombre: "Marcos", apellido:"Perez",fechaNacimiento:Date.parse('yyyy-MM-dd','1993-03-29').clearTime());
		def eric = new Empleado(nombre: "Eric" , apellido: "Brandwein",fechaNacimiento:Date.parse('yyyy-MM-dd','1997-04-01').clearTime());
		def francisco = new Empleado(nombre: "Francisco" , apellido: "Curdi",fechaNacimiento:Date.parse('yyyy-MM-dd','1997-03-29').clearTime());
		def pelota = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2015-12-06').clearTime(), url:"http://articulo.mercadolibre.com.ar/MLA-542474342-balon-oficial-velez-oficial-_JM",idItem:"MLA542474342",precio: 250.00);
		pelota.descripcion="pelota";
		def remera = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2015-03-29').clearTime(), url: "http://articulo.mercadolibre.com.ar/MLA-543943471-remera-paez-we-look-modelo-chakana-_JM",idItem:"MLA543943471",precio: 190.00);
		remera.descripcion="remera"
		def tablet = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2016-03-29').clearTime(), url: "http://localhost:8080/meli-regalos/itemFinder/show/MLA542942105?idEmpleado=1",idItem:"MLA542942105",precio:2500.00);
		tablet.descripcion="tablet"
		def iphone = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2015-03-29').clearTime(), url: "http://articulo.mercadolibre.com.ar/MLA-542310432-iphone-6-16gb-apple-iphone-6-retina-wifi-sellado-liberado-a8-_JM",idItem:"MLA542310432",precio:12500.00);
		iphone.descripcion="iphone";
		def notebook = new Regalo(fechaEntrega:Date.parse('yyyy-MM-dd','2013-03-29').clearTime(), url: "http://articulo.mercadolibre.com.ar/MLA-546888761-notebook-e920-tv-positivo-bgh-14-led-celeron-4gb-500gb-_JM",idItem:"MLA546888761",precio:12500.00)
		notebook.descripcion ="notebook";
		jorge.addToRegalos(pelota);
		uriel.addToRegalos(remera);
		uriel.addToRegalos(tablet);
		marcos.addToRegalos(iphone);
		francisco.addToRegalos(notebook);
		jorge.save(flush:true);
		marcos.save(flush:true);
		uriel.save(flush:true);
		eric.save(flush:true);
		francisco.save(flush:true);
		sebastian.save(flush:true);
		pelota.save(flush:true);
		remera.save(flush:true);
		iphone.save(flush:true);
		tablet.save(flush:true);
		notebook.save(flush:true);
	}
}
