<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@page import="mx.ulsa.modelo.Usuario" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pefil</title>
<jsp:include page="/componentes/bootstrap.jsp"></jsp:include>
</head>
<body>
	<div style="text-align: center;">
	<% Usuario usuario = (Usuario) request.getSession().getAttribute("usuario"); %>
		<h1>Perfil</h1>
		<c:if test="${usuario == null }">
			<jsp:forward page="./login.jsp"></jsp:forward>
		</c:if>
		<c:if test="${usuario != null }">
			<h4>Mi perfil</h4>
			<h5>Correo: <%=usuario.getCorreo()%></h5>
		</c:if>
		
	</div>
</body>
</html>