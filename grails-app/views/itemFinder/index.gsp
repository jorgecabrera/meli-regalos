<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<meta name="layout" content="formatoAplicacion">
<g:set var="entityName"
	value="${message(code: 'empleado.label', default: 'Empleado')}" />
<title><g:message code="default.list.label" args="[entityName]" />
</title>


</head>

<body>
	<g:hiddenField id="offset" name="offset" value="0" />
	<g:hiddenField id="idEmpleado" name="idEmpleado" value="${idEmpleado }" />
	<g:hiddenField id="maxRows" name="maxRows" value="0" />
	<h1>Consulta a API mercado libre</h1>
	<div>
		<div class="form-group">
			<label for="textBusqueda">Buscar:</label> <input type="text"
				class="form-control" id="textBusqueda" placeholder="Buscar">
			<button type="button" id="botonBuscador">Buscar</button>
		</div>
	</div>
	<div id="list-empleado" class="content scaffold-list" role="main">
		<div id="textoRespuesta"></div>
		<table>
			<thead>
				<tr>

					<g:sortableColumn property="descripcion"
						title="${message(code: 'descripcion',default: 'Descripcion')}" />

					<g:sortableColumn property="imagen"
						title="${message(code: 'imagen',default: 'Imagen')}" />

					<g:sortableColumn property="precio"
						title="${message(code: 'precio',default: 'Precio')}" />

				</tr>
			</thead>
			<tbody id="contenido_tabla">


			</tbody>
		</table>
		<div align="center">
			<label id="anterior">Anterior</label> <label id="siguiente">Siguiente</label>
		</div>
	</div>

	<script type="text/javascript">
		console.log("Punto 1");
		$("#list-empleado").hide();
		$("#textoRespuesta").hide();
		$("#botonBuscador").click(buscar)
		$("#textBusqueda").keypress(verificarEnter)
		$("#siguiente").click(mostrarSiguientes)
		$("#anterior").click(mostrarAnteriores)
		function mostrarSiguientes() {
			var offset = parseInt($("#offset").val(),10);
			if (offset + 50 > $("#maxRows").val()) {
				console.log("se supero el max offset")

			} else {
				$("#offset").val(offset+50)
				buscar();
			}

		}
		function mostrarAnteriores() {
			var offset = parseInt($("#offset").val(),10);
			if (offset - 50 < 0) {
				console.log("se supero el min offset")

			} else {
				$("#offset").val(offset-50)
				buscar();
			}

		}
		function verificarEnter(event) {
			if (event.which == 13) {
				buscar();
			}

		}
		function mostrarResultado(data) {
			console.log("Punto 5");
			var infoRespuesta = document.getElementById("textoRespuesta");
			infoRespuesta.innerHTML = "<h1></h1>"
			$("#maxRows").val(data.paging.total);
			$.each(data.results, agregarResultado)
		}

		function buscar() {
			var divRespuesta = $("#textoRespuesta")
			divRespuesta.show();
			$("#list-empleado").show();
			var tabla = document.getElementById("contenido_tabla")
			while (tabla.firstChild) {
				tabla.removeChild(tabla.firstChild);
			}
			var busqueda = $("#textBusqueda").val();
			var offset = $("#offset").val();
			var promise = $.get(
					"https://api.mercadolibre.com/sites/MLA/search", {
						q : busqueda,
						offset : offset
					});
			console.log("Punto 2");
			promise.done(mostrarResultado);
			console.log("Punto 3");
			promise.fail(mostrarError);
			console.log("Punto 4");
		}
		function agregarResultado(index, item) {
			//console.log(item.title);
			var html = "";
			if (index % 2 == 0) {
				html += "<tr class='even'>";
			} else {
				html += "<tr class='odd'>";
			}
			console.log($("#idEmpleado").val())
			//console.log("antes del tittle")
			html += "<td>" + "<a href='/meli-regalos/itemFinder/show/"
					+ item.id + "?idEmpleado=" + $("#idEmpleado").val() + "'>"
					+ item.title + "</a>"

			"</td>";
			//console.log("despues del tittle " + item.title);
			html += "<td>"
					+ "<img src='"+item.thumbnail+"' height='42' width='42'>"
					+ "</td>"
			html += "<td>" + item.price + "</td>"

			html += "</tr>"
			$("#contenido_tabla").append(html);

		}
		function mostrarError() {
			console.log("Punto 6");
			$("#respuesta_api").html("<li>Se produjo un errors</li>");
		}
		console.log("Punto 7");
	</script>
</body>
</html>