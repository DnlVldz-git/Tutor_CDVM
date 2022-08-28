<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tutor</title>
<jsp:include page="/componentes/bootstrap.jsp"></jsp:include>

</head>
<body>

	<jsp:include page="/componentes/headerPublico.jsp"></jsp:include>
	<main class="form-signin w-100 m-auto">
		<form action="<%=request.getContextPath()%>/Usuario/login">							
			<h1 class="h3 mb-3 fw-normal">Ingrese sus credenciales</h1>

			<div class="form-floating">
				<input type="email" class="form-control" name="email"
					id="floatingInput" placeholder="name@example.com"> <label
					for="floatingInput">Correo Electr&oacute;nico</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" name="password"
					id="floatingPassword" placeholder="Password"> <label
					for="floatingPassword">Contrase&ntilde;a</label>
			</div>

			<button class="w-100 btn btn-lg btn-primary" type="submit">Entrar
				</button>
			<p class="mt-5 mb-3 text-muted"> 2017 2022</p>
		</form>
	</main>
	<br />
	<br />
	<br />
	<jsp:include page="/componentes/footerPublico.jsp"></jsp:include>

	<style>
.form-signin {
	max-width: 330px;
	padding: 15px;
}

.form-signin .form-floating:focus-within {
	z-index: 2;
}

.form-signin input[type="email"] {
	margin-bottom: -1px;
	border-bottom-right-radius: 0;
	border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
	margin-bottom: 10px;
	border-top-left-radius: 0;
	border-top-right-radius: 0;
}
</style>
</body>
</html>