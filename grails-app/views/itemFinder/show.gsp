<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="formatoAplicacion">
<title><g:message code="default.show.label" args="[entityName]" /></title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
</head>
<body>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><g:link class="list" action="index">
					Volver
				</g:link></li>
		</ul>
	</div>
	<div id="show-item" class="content scaffold-show" role="main">
		<h1 id="titulo-item">
			Mostrando item
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<ol id="lista-items">
			<li class="fieldcontain"></li>

			<li class="fieldcontain"></li>

		</ol>
	</div>
</body>
</html>
