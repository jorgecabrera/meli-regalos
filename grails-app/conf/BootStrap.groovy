import meli.regalos.*;

class BootStrap {

    def init = { servletContext -> crearEmpleados();
		
    }
    def destroy = {
    }
	def crearEmpleados(){
		def jorge = new Empleado(nombre: "Jorge", apellido: "Cabrera",cumpleanio:"6-12",fechaNacimiento:Date.parse('yyyy-MM-dd','1991-12-06'));
		def uriel = new Empleado(nombre: "Uriel", apellido:"Mysler",cumpleanio:"3-29", fechaNacimiento:Date.parse('yyyy-MM-dd','1993-03-29'));
		def sebastian = new Empleado(nombre: "Sebastian", apellido:"Garcia",cumpleanio:"3-30", fechaNacimiento:Date.parse('yyyy-MM-dd','1993-03-30'));
		def erik = new Empleado(nombre: "Erik" , apellido: "Brandwein",cumpleanio:"4-1", fechaNacimiento:Date.parse('yyyy-MM-dd','1997-04-01'));
		def francisco = new Empleado(nombre: "Francisco" , apellido: "Curdi",cumpleanio:"3-29", fechaNacimiento:Date.parse('yyyy-MM-dd','1997-03-29'));
		def pelota = new Regalo(anio: 2015, url:"http://articulo.mercadolibre.com.ar/MLA-542474342-balon-oficial-velez-oficial-_JM");
		def remera = new Regalo(anio: 2015, url: "http://articulo.mercadolibre.com.ar/MLA-548375082-remera-paez-gris-con-bolsillo-verde-_JM");
		def tablet = new Regalo(anio: 2016, url: "http://http://articulo.mercadolibre.com.ar/MLA-545992298-tablet-samsung-galaxy-tab-4-7-quad-core-12ghz-8gb-wifi--_JM")
		jorge.agregarRegalo(pelota);
		uriel.agregarRegalo(remera);
		uriel.agregarRegalo(tablet);
		jorge.save(flush:true);
		uriel.save(flush:true);
		erik.save(flush:true);
		francisco.save(flush:true);
		sebastian.save(flush:true);
		pelota.save(flush:true);
		remera.save(flush:true);
		tablet.save(flush:true);
	}
}
