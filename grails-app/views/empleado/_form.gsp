<%@ page import="meli.regalos.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="empleado.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${empleadoInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${empleadoInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${empleadoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'regalos', 'error')} ">
	<label for="regalos">
		<g:message code="empleado.regalos.label" default="Regalos" />
		
	</label>
	<g:select name="regalos" from="${meli.regalos.Regalo.list()}" multiple="multiple" optionKey="id" size="5" value="${empleadoInstance?.regalos*.id}" class="many-to-many"/>

</div>

