
<%@ page import="meli.regalos.Empleado"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<meta name="layout" content="formatoAplicacion">
<g:set var="entityName"
	value="${message(code: 'empleado.label', default: 'Empleado')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-empleado" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<!-- SE CAMBIA LO QUE DICE EL HOME -->
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-empleado" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>
					<g:sortableColumn property="apellido"
						title="${message(code: 'empleado.apellido.label', default: 'Apellido')}" />
					<g:sortableColumn property="nombre"
						title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
					<g:sortableColumn property="fechaNacimiento"
						title="${message(code: 'empleado.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					<g:sortableColumn property="Regalos"
						title="${message(code: 'empleado.regalos.label', default: 'Regalo')}" />
				</tr>
			</thead>
			<tbody>
				<g:each in="${empleadoInstanceList}" status="i"
					var="empleadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td><g:link action="show" id="${empleadoInstance.id}">
								${fieldValue(bean: empleadoInstance, field: "apellido")}
							</g:link></td>
						<td>
							${fieldValue(bean: empleadoInstance, field: "nombre")}
						</td>
						<td>
							${fieldValue(bean: empleadoInstance, field: "fechaNacimiento").substring(0,10)}
						</td>
						<td id="contenidoRegalo${empleadoInstance.id}">
							<button type="button" id="botonVerRegalo${empleadoInstance.id}"
								onClick="ocultar(${empleadoInstance.id})">Ver</button>
						</td>
					</tr>
					<g:hiddenField name="listaRegalos"
						id="regalos${empleadoInstance.id}"
						value="${empleadoInstance.regalos}" />
				</g:each>
			</tbody>
		</table>
		<div class="pagination">
			<g:paginate total="${empleadoInstanceCount ?: 0}" />
		</div>
	</div>

	<script type="text/javascript">
		function ocultar(id) {
			var idRegalo = "botonVerRegalo" + id;
			document.getElementById(idRegalo).style.visibility= 'hidden';
			var regalos = $("#regalos"+id).val();
			console.log(regalos);
			mostrarRegalos(regalos,id);
		}
		function mostrarRegalos(empleado,id){
			var tabla = document.createElement("table")
			var thead = document.createElement("thead")
			var tblBody = document.createElement("tbody")
			var tr = document.createElement("tr");
			$("#contenidoRegalo"+id).append(tabla);
			$("#contenidoRegalo"+id).append(thead);
			$("#contenidoRegalo"+id).append(tblBody);
			$("#contenidoRegalo"+id).append(tr);
		}
	</script>
</body>
</html>
