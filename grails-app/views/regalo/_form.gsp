<%@ page import="meli.regalos.Regalo" %>



<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'empleado', 'error')} ">
	<label for="empleado">
		<g:message code="regalo.empleado.label" default="Empleado" />
		
	</label>
	<g:select id="empleado" name="empleado.id" from="${meli.regalos.Empleado.list()}" optionKey="id" value="${regaloInstance?.empleado?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="regalo.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${regaloInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'imagen', 'error')} ">
	<label for="imagen">
		<g:message code="regalo.imagen.label" default="Imagen" />
		
	</label>
	<g:textField name="imagen" value="${regaloInstance?.imagen}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'anio', 'error')} required">
	<label for="anio">
		<g:message code="regalo.anio.label" default="Anio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="anio" type="number" value="${regaloInstance.anio}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: regaloInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="regalo.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="url" required="" value="${regaloInstance?.url}"/>

</div>

