
<%@ page import="meli.regalos.Regalo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regalo.label', default: 'Regalo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-regalo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
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
					
						<g:sortableColumn property="anio" title="${message(code: 'regalo.anio.label', default: 'Anio')}" />
					
						<th><g:message code="regalo.empleado.label" default="Empleado" /></th>
					
						<g:sortableColumn property="url" title="${message(code: 'regalo.url.label', default: 'Url')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regaloInstanceList}" status="i" var="regaloInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regaloInstance.id}">${fieldValue(bean: regaloInstance, field: "anio")}</g:link></td>
					
						<td>${fieldValue(bean: regaloInstance, field: "empleado")}</td>
					
						<td>${fieldValue(bean: regaloInstance, field: "url")}</td>
					
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
