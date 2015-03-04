<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="formatoAplicacion">
<g:set var="entityName"
	value="${message(code: 'empleado.label', default: 'Empleado')}" />
<title><g:message code="default.list.label" args="[entityName]" />
</title>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
</head>

<body>
	<h1>Consulta a API mercado libre</h1>
	<div id="list-empleado" class="content scaffold-list" role="main">
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
	</div>
	<script type="text/javascript">
		console.log("Punto 1");
		var promise = $.get("https://api.mercadolibre.com/sites/MLA/search", {
			q : "pelopincho",
			offset : 2
		});
		console.log("Punto 2");
		promise.done(mostrarResultado);
		console.log("Punto 3");
		promise.fail(mostrarError);
		console.log("Punto 4");
		function mostrarResultado(data) {
			console.log("Punto 5");
			$.each(data.results, agregarResultado)
		}
		function agregarResultado(index, item) {
			//console.log(item.title);
			var html="";
			if (index % 2 == 0){
				html+="<tr class='even'>";
			}else{
				html+="<tr class='odd'>";
			}
			console.log("antes del tittle")
			html+="<td>"+"<a href='/meli-regalos/itemFinder/show/"+item.id+"'>"
			+item.title+
			"</a>"

			"</td>";
			console.log("despues del tittle "+item.title);
				html+="<td>"+"<img src='"+item.thumbnail+"' height='42' width='42'>"+"</td>"
				html+="<td>"+item.price+"</td>"			
			
			html += "</tr>"
			console.log(html)
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