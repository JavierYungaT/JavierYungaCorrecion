<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar Usuario</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link href="../css/createAccount.css" rel="stylesheet" type="text/css" />
</head>
<body>


	<!--Cabecera-->
	<header>

		<!-- Navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-dark gris row scrolling-navbar fixed-top">
			
				<a href="/CorreccionExamen/index.jsp" style="font-size: 20px;" class="btn  btnInicio">INICIO</a>
		</nav>


	</header>
	<!--Cabecera-->

  <c:set var="p1" value="${requestScope['usuario']}" />
  <c:set var="p2" value="${requestScope['mensaje']}" />

<br>
	<br>
	<br>
	<br>
	<br>

	<div class="form-group text-center">

		<p>
			<strong>REGISTRARSE</strong>
		</p>
	</div>


	<div class="card  container mt-4 col-lg-4">
		<form class="form-sign" action="/CorreccionExamen/CrearUsuario" method="POST">
			<div class="card-body">
			
				<div class="form-group">
					<label for="form1" >NOMBRE</label>
					<input type="text"  class="form-control" id="exampleInputName2" placeholder="Nombre" name="nombre" required>
				</div>
				<div class="form-group">
					<label for="form1" >CEDULA</label>
					<input type="text" class="form-control" id="exampleInputName2" placeholder="Cédula" name="cedula" required>
				</div>
				<div class="form-group">
					<label for="form1" >DIRECCION</label>
					<input type="text" class="form-control" id="exampleInputName2" placeholder="Dirección" name="direccion" required>
				</div>
				<div class="form-group">
					<label for="form1" >TELEFONO</label>
					<input type="text" class="form-control" id="exampleInputName2"" placeholder="Teléfono"  name="telefono" required>
				</div>
				<br>
				<button class="btn " type="submit" name="resp" value="Registrarse">Registrarse</button>
			</div>
		</form>
	</div>
</body>
</html>
