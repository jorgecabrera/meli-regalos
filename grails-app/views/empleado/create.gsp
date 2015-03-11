<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="formatoAplicacion">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="http://localhost:8080/meli-regalos/empleado/index"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	<div id="create-empleado" class="content scaffold-create" role="main">
		<h1>
			<g:message code="Crear empleado" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${empleadoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${empleadoInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form url="[resource:empleadoInstance, action:'save']">
			<fieldset class="form">
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
					<label for="nombre"> <g:message
							code="empleado.nombre.label" default="Nombre" /> <span
						class="required-indicator">*</span>
					</label>
					<g:textField name="nombre" required="" id="valorNombre"
						value="${empleadoInstance?.nombre}" />
				</div>
			</fieldset>
			<fieldset class="buttons">
				<g:submitButton name="create" class="save" onClick="validar()"
					value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</fieldset>
		</g:form>
	</div>
	<script type="text/javascript">
		function validar(){
			var nombre = $("#valorNombre").val();
			var apellido = $("#valorApellido").val();
			var expreg = new RegExp("^[A-Za-z]*$");
			var nombreValido = expreg.test(nombre.toString());
			var apellidoValido = expreg.test(apellido.toString());
			if(!nombreValido){
				alert('[ERROR] El nombre de usuario no es correcto');
				}
			if(!apellidoValido){
				alert('[ERROR] El apellido del usuario es incorrecto');
			}
		}
		
	</script>
</body>
</html>
