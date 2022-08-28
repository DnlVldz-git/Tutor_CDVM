<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
	<%
	HttpSession sesion = request.getSession();
	sesion.removeAttribute("usuario");
	sesion.invalidate();
	%>	
</body>
<jsp:forward page="./login.jsp"></jsp:forward>
</html>