<%@ page import="meli.regalos.Empleado"%>
<%@ page import="helpers.InterpretadorFechas" %> 
<!DOCTYPE html>
<html>
<head>
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
			<li><a class="home"
				href="http://localhost:8080/meli-regalos/empleado/index"><g:message
						code="default.home.label" /></a></li>
		</ul>
	</div>
	<div id="list-empleado" class="content scaffold-list" role="main">
		<h1>
			<g:message code="Cumpleañeros del ${fecha.getAt(Calendar.DAY_OF_MONTH)}/${fecha.getAt(Calendar.MONTH)+1}/${fecha.getAt(Calendar.YEAR)} con regalo asignado" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
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
				<g:each in="${empleadoList}" status="i" var="regalo">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>
							${regalo.empleado.nombre}
						</td>
						<td>
							${regalo.empleado.apellido}
						</td>
						<td>
							${regalo.url}
						</td>
				</g:each>
			</tbody>
		</table>
		<div class="nav" role="navigation" align="center">
			<form>
				<input type="date" name="fecha" step="1" min="1991-01-01"
					max="2030-12-31" value="${InterpretadorFechas.interpretar(new Date())}">
				<button type="submit">Ir</button>
			</form>
		</div>
		<fieldset class="buttons">
			<g:link controller="cumpleanios"
				params="[fecha: InterpretadorFechas.interpretar(fecha.previous())]"
				action="index">Anterior</g:link>
			<g:link controller="cumpleanios"
				params="[fecha: InterpretadorFechas.interpretar(fecha.next())]"
				action="index">Siguiente</g:link>
		</fieldset>
	</div>
</body>
</html>