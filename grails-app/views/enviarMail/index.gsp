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
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<!-- SE CAMBIA LO QUE DICE EL HOME -->
		</ul>
	</div>
	<div class="pagination">
		<g:link controller="enviarMail"
			action="index">Enviar resumen</g:link>
	</div>
</body>
</html>
