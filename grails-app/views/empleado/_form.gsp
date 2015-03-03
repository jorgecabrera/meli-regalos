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
	
<ul class="one-to-many">
<g:each in="${empleadoInstance?.regalos?}" var="r">
    <li><g:link controller="regalo" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regalo" action="create" params="['empleado.id': empleadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regalo.label', default: 'Regalo')])}</g:link>
</li>
</ul>


</div>

