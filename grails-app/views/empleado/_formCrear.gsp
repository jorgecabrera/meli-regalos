<%@ page import="meli.regalos.Empleado"%>
<html>
<head>
</head>
<body>
	<div
		class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'apellido', 'error')} required">
		<label for="apellido"> <g:message
				code="empleado.apellido.label" default="Apellido" /> <span
			class="required-indicator">*</span>
		</label>
		<g:textField name="apellido" required="" id="valorApellido"
			value="${empleadoInstance?.apellido}" />
	</div>
	<div
		class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaNacimiento', 'error')} required">
		<label for="fechaNacimiento"> <g:message
				code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" />
			<span class="required-indicator">*</span>
		</label>
		<g:datePicker name="fechaNacimiento" precision="day"
			value="${empleadoInstance?.fechaNacimiento}" />
	</div>
	<div
		class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
		<label for="nombre"> <g:message code="empleado.nombre.label"
				default="Nombre" /> <span class="required-indicator">*</span>
		</label>
		<g:textField name="nombre" required="" id="valorNombre"
			value="${empleadoInstance?.nombre}" />
	</div>
</body>
</html>

