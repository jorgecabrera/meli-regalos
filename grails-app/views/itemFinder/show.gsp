<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="formatoAplicacion">
<title><g:message code="default.show.label" args="[entityName]" /></title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<!--  <link rel="stylesheet" type="text/css"
	href="${resource(dir:'css',file:'bootstrap.css') }" />-->

</head>
<body>
	<input type="hidden" id="idItem" value="${id}">
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="http://localhost:8080/meli-regalos/empleado/index"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					Volver
				</g:link></li>
		</ul>
	</div>
	<div id="show-item" class="content scaffold-show" role="main">
		<h1 id="titulo-item">Mostrando item </h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<div id="mostrador-item" class="list-unstyled" align="center">
		</div>
		<div>
			<div align="center">
				<form action="${createLink(controller:'regalo',action:'save') }" method="post">
					<!-- cuando hago el submit y llamo al controller save, se le va a pasar 
					las etiquetas que estan	aca como atributo, y va a crear la un objeto 
					de la clase -->
					<g:hiddenField name="descripcion" id="desc"/>
					<g:hiddenField name="precio" id="precio"/>
					<g:hiddenField name="imagen" id="imagen"/>
					<g:hiddenField name="url" id="url"/>
					<g:hiddenField name="idItem" id="idItem" value="${id}"/>
					<g:hiddenField name="empleado" id="idEmpleado" value="${idEmpleado}"/>
					<input type="submit" value="Regalar">	
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		/****ESTA VALIDACION ES MALA, QUE PASA SI EL ID DEL EMPLEADO ES MAYOR A LA MAXIMA****/
		if ($("#idEmpleado").val() == 0){
			alert("Aun no se registro el usuario")
			window.location.replace("http://localhost:8080/meli-regalos/empleado/index")
		}
		console.log("el valor del item es "+$("#idItem").attr("value"))
		var promise = $.get("https://api.mercadolibre.com/items/"
				+ $("#idItem").attr("value"));
		console.log("el valor que tengo que guardar es :"+$("#idItem").attr("value"));
		promise.done(mostrarResultado);
		//console.log("Punto 3");
		promise.fail(mostrarError);
		//console.log("Punto 4");
		function mostrarResultado(data) {
			//console.log("Punto 5");
			$("#titulo-item").append(data.title)
			$("#desc").val(data.title)
			$("#precio").val(data.price)
			$("#imagen").val(data.thumbnail)
			$("#url").val(data.permalink)
			agregarResultado(data);
		}
		function agregarResultado(item) {
			var tabla = document.createElement("table")
			var thead = document.createElement("thead")
			var filaTitulos = document.createElement("tr")
			var tituloIzq = document.createElement("th");
			var textTituloIzq = document.createTextNode("Campo");
			tituloIzq.appendChild(textTituloIzq);
			var tituloDer = document.createElement("th");
			var textTituloDer = document.createTextNode("Valor");
			tituloDer.appendChild(textTituloDer);
			filaTitulos.appendChild(tituloIzq);
			filaTitulos.appendChild(tituloDer);
			thead.appendChild(filaTitulos);
			tabla.appendChild(thead)
			var tblBody = document.createElement("tbody")
			var titulo = document.createElement("tr");
			var imagen = document.createElement("tr");
			var precio = document.createElement("tr");
			var url = document.createElement("tr");
			// Crea un elemento <td> y un nodo de texto, haz que el nodo de
			// texto sea el contenido de <td>, ubica el elemento <td> al final
			// de la hilera de la tabla
			insertarFila(titulo,"Titulo", item.title)
			var clave = document.createElement("td");
			var textoClave = document.createTextNode("Imagen");
			clave.appendChild(textoClave);
			var valor = document.createElement("td")
			var laImagen = document.createElement("img")
			laImagen.src=item.thumbnail
			valor.appendChild(laImagen);
			imagen.appendChild(clave);
			imagen.appendChild(valor);
			insertarFila(precio,"Precio", item.price)
			clave = document.createElement("td");
			textoClave = document.createTextNode("URL");
			clave.appendChild(textoClave);
			valor = document.createElement("td")
			valor.innerHTML="<a href='"+item.permalink+"'>"+item.permalink+"</a>"
			url.appendChild(clave);
			url.appendChild(valor);
			// agrega la hilera al final de la tabla (al final del elemento tblbody)
			tblBody.appendChild(titulo);
			tblBody.appendChild(imagen);
			tblBody.appendChild(precio);
			tblBody.appendChild(url);
			console.log("despues del tittle " + item.title);
			tabla.appendChild(tblBody)
			
			var miDiv=document.getElementById("mostrador-item");
			miDiv.appendChild(tabla)
		}
		function insertarFila(fila,texto,valor){
			campoIzquierdo = document.createElement("td")
			campoDerecho = document.createElement("td")
			textoIzquierdo = document.createTextNode(texto);
			textoDerecho = document.createTextNode(valor);
			campoIzquierdo.appendChild(textoIzquierdo);
			campoDerecho.appendChild(textoDerecho);
			fila.appendChild(campoIzquierdo);
			fila.appendChild(campoDerecho)
			}
		function mostrarError() {
			console.log("Punto 6");
			$("#respuesta_api").html("<li>Se produjo un errors</li>");
		}
		console.log("Punto 7");
	</script>

</body>
</html>
