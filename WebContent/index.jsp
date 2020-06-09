<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link href="../css/createAccount.css" rel="stylesheet" type="text/css" />

<title>Tickets</title>
</head>
<body>

<!--Cabecera-->
	<header>

		<!-- Navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-dark gris row scrolling-navbar fixed-top">
			<!-- logo -->
			<div class="col-xs-9 col-sm-8 col-md-4 col-mg-4 letter">
			
			<a href="/CorreccionExamen/index.jsp" style="font-size: 20px;" class="btn  btnInicio">PARQUEADERO</a>
			 
			
			</div>

			<!-- Datos extras -->
			<ul>
				
				<li class="nav-item"><a class="nav-link" href="jsp/CrearUsuario.jsp"><i
						style="font-size: 17px;"></i> <span
						class="clearfix d-none d-sm-inline-block" style="font-size: 30px;">REGISTRARSE</span></a></li>
			</ul>
		</nav>
		
		<section class="fondo"></section>
	</header>
	<!--Cabecera-->
<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>




	<div class="form-group text-center">

		<p>
			<strong>CREAR TICKETS</strong>
		</p>
	</div>

	<div class="container">
		<form action="Registrar" method="POST" class="formIndex">
			<!-- Material input -->
			
			
			<div class="form-group" >
				<label for="form1" >CEDULA</label>
				<input type="text" id="form1" class="form-control" name="cedula">
				
			</div>

			<!-- Material input -->
			
			<div class="form-group">
			<label for="form1" >PlACA VEHICULO</label>
				<input type="text" id="form1" class="form-control" name="placaVehiculo"> 
			</div>

			<!-- Material input -->
			<div class="form-group" >
			<label for="form1">MARCA VEHICULO</label>
				<input type="text" id="form1" class="form-control"name="marcaVehiculo"> 
			</div>


			<!-- Material input -->
			<div class="form-group">
			<label for="form1">MODELO VEHICULO</label>
				<input type="text" id="form1" class="form-control" name="modeloVehiculo"> 
			</div>


			<!-- Material input -->
			<div class="form-group">
				<label for="form1" >NUMERO TICKET</label>
				<input type="text" id="form1" class="form-control" name="numeroTicket"> 
			</div>



			<!-- Material input -->
			<div class="form-group">
			<label for="form1">FECHA ENTRADA</label>
				<input type="date" class="form-control" name="fechaEntrada">
			</div>

			<br>

			<!-- Material input -->
			<div class="form-group">
				<label for="form1">HORA ENTRADA</label>
				<input type="time" class="form-control" name="horaEntrada"> 
			</div>



			<!-- Material input -->
			<div class="form-group">
				<label for="form1">FECHA SALIDA</label>
				<input type="date" class="form-control" name="fechaSalida"> 
			</div>

			<br>

			<!-- Material input -->
			<div class="form-group">
				<label for="form1"> Hora de Salida</label>
				<input type="time" class="form-control" name="horaSalida"> 
			</div>

			<button type="submit" class="btn  btnConsultar">Guardar</button>
			<a href="/CorreccionExamen/jsp/listar.jsp"
				class="btn  btnBuscar">Buscar</a>

		</form>
		<!-- JQuery -->
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<!-- Bootstrap tooltips -->
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
		<!-- Bootstrap core JavaScript -->
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
		<!-- MDB core JavaScript -->
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.0/js/mdb.min.js"></script>
</body>
</html>