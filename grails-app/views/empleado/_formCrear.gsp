<%@ page import="meli.regalos.Empleado" %>
	º
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
<ul class="one-to-many" style="list-style-type:none">
<g:each in="${empleadoInstance?.regalos?}" var="r">
    <li><g:link controller="regalo" action="show" id="${r.id}">${r?.descripcion}</g:link></li>
</g:each>
</ul>


</div>

