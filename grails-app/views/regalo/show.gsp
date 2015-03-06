
<%@ page import="meli.regalos.Regalo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="formatoAplicacion">
		<g:set var="entityName" value="${message(code: 'regalo.label', default: 'Regalo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regalo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				
			</ul>
		</div>
		<div id="show-regalo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regalo">
			
				<g:if test="${regaloInstance?.empleado}">
				<li class="fieldcontain">
					<span id="empleado-label" class="property-label"><g:message code="regalo.empleado.label" default="Empleado" /></span>
					
						<span class="property-value" aria-labelledby="empleado-label"><g:link controller="empleado" action="show" id="${regaloInstance?.empleado?.id}">${regaloInstance?.empleado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regaloInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="regalo.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${regaloInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regaloInstance?.imagen}">
				<li class="fieldcontain">
					<span id="imagen-label" class="property-label">
					<g:message code="regalo.imagen.label" default="Imagen" />
					</span>
					
						<span class="property-value" aria-labelledby="imagen-label"><img src="${fieldValue(bean: regaloInstance, field: "imagen")}"></span>
					
				</li>
				</g:if>
			
				<g:if test="${regaloInstance?.anio}">
				<li class="fieldcontain">
					<span id="anio-label" class="property-label"><g:message code="regalo.anio.label" default="Anio" /></span>
					
						<span class="property-value" aria-labelledby="anio-label"><g:fieldValue bean="${regaloInstance}" field="anio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regaloInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="regalo.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><a href="${fieldValue(bean: regaloInstance, field: "url")}">${fieldValue(bean: regaloInstance, field: "url")}</a></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:regaloInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${regaloInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
