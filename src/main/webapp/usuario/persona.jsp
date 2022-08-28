<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="mx.ulsa.modelo.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Usuario</title>

<link href="<%=request.getContextPath()%>/usuario/dashboard.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/usuario/dashboard.rtl.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}
</style>
<link href="<%=request.getContextPath()%>/dashboard.css"
	rel="stylesheet">
</head>
<%
Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
%>



<body>
	<c:if test="${usuario == null }">
		<jsp:forward page="./login.jsp"></jsp:forward>
	</c:if>
	<jsp:include page="/componentes/mainHeader.jsp">
		<jsp:param name="usuarioCorreo" value="${usuario.getCorreo()}"></jsp:param>
	</jsp:include>
	<div class="container-fluid">
		<div class="row">
			<jsp:include page="/usuario/menuLateral.jsp"></jsp:include>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<h1 class="mt-2">Persona</h1>	
				
				<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					<%=request.getAttribute("mensaje")%>
					<button type="button" class="btn-close" data-bs-dismiss="alert"
						aria-label="Close"></button>
				</div>
				<div class="row">
					<form method="POST"
						action="<%=request.getContextPath()%>/Persona/registrar">
						<div class="mb-3 row">
							<label for="correo" class="col-sm-3 col-form-label">Nombre:</label>
							<div class="col-sm-9">
								<input type="text" name="nombre" class="form-control">
							</div>
						</div>
							<div class="mb-3 row">
							<label for="apePaterno" class="col-sm-3 col-form-label">Apellido paterno:</label>
							<div class="col-sm-9">
								<input type="text" name="apPaterno" class="form-control">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="apeMaterno" class="col-sm-3 col-form-label">Apellido materno:</label>
							<div class="col-sm-9">
								<input type="text" name="apMaterno" class="form-control">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="edad" class="col-sm-3 col-form-label">Edad:</label>
							<div class="col-sm-9">
								<input type="number" name="edad" class="form-control">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="edad" class="col-sm-3 col-form-label">RFC:</label>
							<div class="col-sm-9">
								<input type="text" name="rfc" class="form-control">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="telefono" class="col-sm-3 col-form-label">Teléfono:</label>
							<div class="col-sm-9">
								<input type="number" name="telefono" class="form-control">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="edad" class="col-sm-3 col-form-label">Fecha
								de nacimiento:</label>
							<div class="col-sm-9">
								<input type="date" name="fechaNacimiento" class="form-control">
							</div>
						</div>
						<div class="mb-3 row">
							<label for="telefono" class="col-sm-3 col-form-label">Domicilio:</label>
							<div class="col-sm-9">
								<input type="text" name="domicilio" class="form-control">
							</div>
						</div>

						<div class="row">
							<div class="col-6">
								<div class="text-center d-flex justify-content-center text-lg-start mt-4 pt-2">
									<button type="submit" class="btn btn-primary btn-lg"
										style="padding-left: 2.5rem; padding-right: 2.5rem;">Crear
										Persona</button>
								</div>
							</div>
							<div class="col-6">
								<div class="text-center d-flex justify-content-center text-lg-start mt-4 pt-2">
									<button type="button" class="btn btn-danger btn-lg"
										style="padding-left: 2.5rem; padding-right: 2.5rem;">Cancelar</button>
								</div>
							</div>
						</div>
					</form>
				</div>

			</main>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js"
		integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js"
		integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha"
		crossorigin="anonymous"></script>
	<script src="<%=request.getContextPath()%>/usuario/dashboard.js"></script>
</body>
</html>