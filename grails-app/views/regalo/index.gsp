
<%@ page import="meli.regalos.Regalo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="formatoAplicacion">
		<g:set var="entityName" value="${message(code: 'regalo.label', default: 'Regalo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regalo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-regalo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="regalo.empleado.label" default="Empleado" /></th>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'regalo.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="imagen" title="${message(code: 'regalo.imagen.label', default: 'Imagen')}" />
					
						<g:sortableColumn property="fechaEntrega" title="${message(code: 'regalo.fechaEntrega.label', default: 'Fecha de entrega')}" />
					
						<g:sortableColumn property="url" title="${message(code: 'regalo.url.label', default: 'Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regaloInstanceList}" status="i" var="regaloInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: regaloInstance, field: "empleado")}</td>
					
						<td><g:link action="show" id="${regaloInstance.id}">${fieldValue(bean: regaloInstance, field: "descripcion")}</g:link></td>
					
						<td><img src="${fieldValue(bean: regaloInstance, field: "imagen")}"></td>
					
						<td>${fieldValue(bean: regaloInstance, field: "fechaEntrega").substring(0,10)}</td>
					
						<td><a href="${fieldValue(bean: regaloInstance, field: "url")}">${fieldValue(bean: regaloInstance, field: "url")}</a></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regaloInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
	