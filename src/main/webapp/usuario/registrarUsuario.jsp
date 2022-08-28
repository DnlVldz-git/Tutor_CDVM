<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="mx.ulsa.modelo.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar usuario</title>

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
				<h1 class="mt-2">Registrar Usuario</h1>

				<div class="row p-2">
					<div class="col-10">
						<form
							action="<%=request.getContextPath()%>/Usuario/registrarUsuarioPersona">
							<div class="mb-3 row">
								<label for="staticEmail" class="col-sm-2 col-form-label">Correo</label>
								<div class="col-sm-10">
									<input type="email" required class="form-control" name="email"
										id="staticEmail" placeholder="email@example.com">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="inputPassword" class="col-sm-2 col-form-label">Contrase&ntilde;a</label>
								<div class="col-sm-10">
									<input type="password" required class="form-control" name="pwd"
										id="inputPassword">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="inputPassword" class="col-sm-2 col-form-label">Estatus</label>
								<div class="col-sm-10">
									<input type="checkbox" required class="" name="status"
										id="inputPassword">
								</div>
							</div>

							<hr />
							<div class="mb-3 row">
								<label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
								<div class="col-sm-10">
									<input type="text" required class="form-control" name="nombre"
										id="staticEmail" placeholder="Nombre">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="apePaterno" class="col-sm-2 col-form-label">Apellido
									Paterno</label>
								<div class="col-sm-10">
									<input type="text" required class="form-control"
										name="apePaterno" id="staticEmail" placeholder="Apellido Paterno">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="apeMaterno" class="col-sm-2 col-form-label">Apellido
									Materno</label>
								<div class="col-sm-10">
									<input type="text" required class="form-control"
										name="apeMaterno" id="staticEmail" placeholder="Apellido Materno">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="edad" class="col-sm-2 col-form-label">Edad</label>
								<div class="col-sm-10">
									<input type="number" min="0" required class="form-control"
										name="edad" id="staticEmail">
								</div>
							</div>
							<div class="mb-3 row">
								<label for="edad" class="col-sm-2 col-form-label">Teléfono</label>
								<div class="col-sm-10">
									<input type="tel" min="0" required class="form-control"
										name="telefono" id="telefono">
								</div>
							</div>
							<div class="mb-3 row">
								<div class="col-sm-10">
									<input type="submit" class="btn btn-success" value="Crear">
								</div>
							</div>
						</form>
					</div>
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