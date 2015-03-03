<%@ page import="meli.regalos.Regalo" %>



<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'anio', 'error')} required">
	<label for="anio">
		<g:message code="regalo.anio.label" default="Anio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="anio" type="number" value="${regaloInstance.anio}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'empleado', 'error')} required">
	<label for="empleado">
		<g:message code="regalo.empleado.label" default="Empleado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empleado" name="empleado.id" from="${meli.regalos.Empleado.list()}" optionKey="id" required="" value="${regaloInstance?.empleado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="regalo.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${regaloInstance?.url}"/>

</div>

