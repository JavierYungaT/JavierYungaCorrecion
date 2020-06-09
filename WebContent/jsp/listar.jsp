<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
	<!-- Optional theme -->
	<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
	<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.15.0/css/mdb.min.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap"
	rel="stylesheet">
<link
	href="/Pr-ctica-de-laboratorio-02-Servlets-JSP-y-JPA/css/index.css"
	rel="stylesheet" type="text/css" />
<link
	href="/Pr-ctica-de-laboratorio-02-Servlets-JSP-y-JPA/css/agenda.css"
	rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link href="../css/createAccount.css" rel="stylesheet" type="text/css" />

<title>Listar</title>
</head>
<body>


	<!--Cabecera-->
	<header>

		<!-- Navbar -->
		<nav
			class="navbar navbar-expand-lg navbar-dark gris row scrolling-navbar fixed-top">
			
				<a href="/CorreccionExamen/index.jsp" style="font-size: 20px;" class="btn  btnInicio">INICIO</a>
				
			<!-- Search form -->
			<form class=" nav navbar-nav nav-flex-icons ml-auto mr-sm-2"
				id="formulario" action="/CorreccionExamen/Listar">
				<input style="color: black; font-size: 18px;"  type="text" name="cedula"
					placeholder="Buscar Cedula" aria-label="Search" id="buscar">
				<input style="color: black; font-size: 18px;" type="text" name="placa"
					placeholder="Buscar placa" aria-label="Search" id="buscar">
					
					<input style="color: black; font-size: 15px;" type="submit" value="Buscar">
				
			</form>

			
		</nav>


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
	
<div class="container"
>	<c:set var="clientes" value="${requestScope['clientes']}" />
	<c:choose>
		<c:when test="${clientes==null}">
			

		</c:when>

		<c:otherwise>
			<table  class="table mt-10">
				<thead class="while blue-text">
					<tr class="row100 head">

						<th scope="col" style="font-size: 20px;">Nombre Cliente</th>
						<th scope="col" style="font-size: 20px;">Placa</th>
						<th scope="col" style="font-size: 20px;">Marca</th>
						<th scope="col" style="font-size: 20px;">Modelo</th>
						<th scope="col" style="font-size: 20px;">Numero del Ticket</th>
						<th scope="col" style="font-size: 20px;">Fecha y hora de ingreso</th>
						<th scope="col" style="font-size: 20px;">Fecha y hora de salida</th>
					</tr>
				</thead>
				<tbody>


					<c:forEach var="vehiculo" items="${clientes.vehiculos}">
						<tr>
							<th scope="col" style="font-size: 15px; color: black;">${vehiculo.cliente.nombre}</th>
							<th scope="col" style="font-size: 15px; color: black;">${vehiculo.placa}</th>
							<th scope="col" style="font-size: 15px; color: black;">${vehiculo.marca}</th>
							<th scope="col" style="font-size: 15px; color: black;">${vehiculo.modelo}</th>
							<th scope="col" style="font-size: 15px; color: black;">${vehiculo.ticket.numero}</th>
							<th scope="col" style="font-size: 15px; color: black;">${vehiculo.ticket.fcehaIngreso}
								${vehiculo.ticket.horaEntrada}</th>
							<th scope="col" style="font-size: 15px; color: black;">${vehiculo.ticket.fcehaSalida}
								${vehiculo.ticket.horaSalida}</th>
						</tr>
					</c:forEach>

				</tbody>



			</table>
		</c:otherwise>
	</c:choose>

</div>

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