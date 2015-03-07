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
	<div class="pagination">
		<g:link controller="enviarMail"
			action="index">Enviar resumen</g:link>
	</div>
</body>
</html>
