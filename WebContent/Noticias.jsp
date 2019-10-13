<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Noticias</title>
</head>
<body>
<%@include file="menu.jsp" %>
	<f:view>
		<h:form>
				<c:forEach var="q" items="${noticiaController.listar}">
    				<center><br/>
    				<h1><c:out value="${q.titulo}"/><br/></h1>
    				<p><c:out value="${q.dataPublicacao}"/><br/></p>
    				<p><c:out value="${q.texto}"/><br/></p>
    				--------------------------------------------------------------------------------------------------------------
    				<br/>
    				</center>
				</c:forEach>
		</h:form>	
	</f:view>
</body>
</html>