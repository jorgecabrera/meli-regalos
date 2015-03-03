<%@ page import="meli.regalos.Regalo" %>



<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'fechaDeAsignacion', 'error')} required">
	<label for="fechaDeAsignacion">
		<g:message code="regalo.fechaDeAsignacion.label" default="Fecha De Asignacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaDeAsignacion" precision="day"  value="${regaloInstance?.fechaDeAsignacion}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="regalo.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${regaloInstance?.url}"/>

</div>

