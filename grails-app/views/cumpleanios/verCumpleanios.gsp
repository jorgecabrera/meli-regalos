<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="formatoAplicacion">
	<link rel="stylesheet" type="text/css" href="${resource(dir:'css',file:'bootstrap.css') }" />
	<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="${resource(dir:'js',file:'bootstrap.min.js') }"></script>
</head>

<body>
	<table>
		<thead>
			<tr>
				<g:sortableColumn property="nombre" 
					title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
				<g:sortableColumn property="apellido"
					title="${message(code: 'empleado.apellido.label', default: 'Apellido')}" />
				<g:sortableColumn property="regalos"
					title="${message(code: 'empleado.regalos.label', default: 'Regalo')}" />
			</tr>
		</thead>
		<tbody>
			<g:each in="${empleadoList}" status="i" var="empleado">
				<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					<td>${empleado.nombre}</td>
					<td>${empleado.apellido}</td>
					<td>${empleado.regalos}</td>
			</g:each>
		</tbody>
	</table>
	
	<g:hiddenField name="fecha" value="${fecha.next()}"/>		<!-- a href = "link"-->
																<!-- <g:hiddenField name="fechaAnterior" value="${fecha.previous()}"/> -->
	<g:actionSubmit value="Siguiente" onclick="return confirm('¿Desea ver los siguientes cumpleaños?')" action="verCumpleanios"/>
</body>
</html>