
<%@ page import="meli.regalos.Empleado"%>
<%@ page import="helpers.InterpretadorFechas"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="formatoAplicacion">
<g:set var="entityName"
	value="${message(code: 'empleado.label', default: 'Empleado')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#show-empleado" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><g:link class="home" action="verEmpleados">
					<g:message code="Principal" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="show-empleado" class="content scaffold-show" role="main">
		<h1>
			<g:message code="default.show.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol class="property-list empleado">

			<g:if test="${empleadoInstance?.apellido}">
				<li class="fieldcontain"><span id="apellido-label"
					class="property-label"><g:message
							code="empleado.apellido.label" default="Apellido" /></span> <span
					class="property-value" aria-labelledby="apellido-label"><g:fieldValue
							bean="${empleadoInstance}" field="apellido" /></span></li>
			</g:if>

			<g:if test="${empleadoInstance?.fechaNacimiento}">
				<li class="fieldcontain"><span id="fechaNacimiento-label"
					class="property-label"><g:message
							code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" /></span>

					<span class="property-value"
					aria-labelledby="fechaNacimiento-label"><g:formatDate
							date="${empleadoInstance?.fechaNacimiento}" /></span></li>
			</g:if>

			<g:if test="${empleadoInstance?.nombre}">
				<li class="fieldcontain"><span id="nombre-label"
					class="property-label"><g:message
							code="empleado.nombre.label" default="Nombre" /></span> <span
					class="property-value" aria-labelledby="nombre-label"><g:fieldValue
							bean="${empleadoInstance}" field="nombre" /></span></li>
			</g:if>

			<g:if test="${empleadoInstance?.regalos}">
				<li class="fieldcontain"><span id="regalos-label"
					class="property-label"><g:message
							code="empleado.regalos.label" default="Regalos" /></span> <g:each
						in="${empleadoInstance.regalos}" var="r">
						<span class="property-value" aria-labelledby="regalos-label">
							<g:link controller="regalo" action="show" id="${r.id}">
								${r?.descripcion}
							</g:link> para <g:link controller="Cumpleanios" action="verCumpleanios"
								params="[fecha:"${InterpretadorFechas.interpretar(r?.fechaEntrega)}"]">
								 "${InterpretadorFechas.interpretar(r?.fechaEntrega)}"
							</g:link>
						</span>
					</g:each></li>
			</g:if>
				<li class="fieldcontain"><span id="agregar-regalo"
					class="property-value"> <a
						href="${createLink(controller:'ItemFinder',params:[idEmpleado:empleadoInstance?.id])}">Agregar
							regalo</a>
				</span></li>
		</ol>
		<g:form url="[resource:empleadoInstance, action:'delete']"
			method="DELETE">
			<fieldset class="buttons">
				<g:link class="edit" action="edit" resource="${empleadoInstance}">
					<g:message code="default.button.edit.label" default="Edit" />
				</g:link>
				<g:actionSubmit class="delete" action="delete"
					value="${message(code: 'default.button.delete.label', default: 'Delete')}"
					onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
			</fieldset>
		</g:form>
	</div>
</body>
</html>
