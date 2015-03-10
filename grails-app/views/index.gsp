<!DOCTYPE html>
<html>
<head>
<link href="${ resource (dir: 'css' , file : 'bootstrap.css')}"
	rel="stylesheet" type="text/css" />
<%--        <link href="${ resource (dir: 'css' , file : 'bootstrap.min.css')}"  rel="stylesheet" type="text/css" />--%>

<script src="${resource (dir: 'js' , file : 'jquery-1.11.2.min.js')}"></script>
<script type="text/javascript"
	src="${resource (dir: 'js' , file : 'bootstrap.js')}"></script>

<style type="text/css">
body {
	text-align: center;
	margin: 0 auto;
}

#contenedor {
	margin: 0 auto;
	text-align: left;
	width: 50%;
}
</style>

</head>
<body>
	<div class="footer" role="contentinfo">
		<img align="center"
			src="http://ww1.prweb.com/prfiles/2007/05/10/525629/logoPRWeb.jpg"
			border=0 />
	</div>
	<div class="jumbotron">
		<h1>Bienvenido a Meli-Regalos</h1>
		<p>
			<g:link class="btn btn-info btn-lg" controller="Empleado"
				action="index" role="button"> Iniciar </g:link>
		</p>
	</div>

</body>


</html>

