<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<title>Cadastro Noticia</title>
</head>
<body>
	<%@include file="menu.jsp"%>
	<f:view>
		<center>
			<h:form>
				<h:outputLabel style="color: white;" value="Titulo "></h:outputLabel>
				<br>
				<h:inputText value="#{noticiaController.noticia.titulo}" id="titulo"
					required="true"
					requiredMessage="O campo nome não pode estar em branco"></h:inputText>
				<h:message for="titulo" style="color:red"></h:message>
				<br>
				<br>
				<h:outputLabel value="Noticia "></h:outputLabel>
				<br>
				<h:inputTextarea
					style="width: 700px; height: 300px;border-radius: 5px;border: 2px solid black;"
					value="#{noticiaController.noticia.texto}" id="texto"
					required="true"
					requiredMessage="O campo nome não pode estar em branco"></h:inputTextarea>
				<h:message for="texto" style="color:red"></h:message>
				<br>
				<br>
				<h:outputLabel value="Data(dd/mm/aaaa) "></h:outputLabel>
				<br>
				<h:inputText value="#{noticiaController.noticia.dataPublicacao}"
					id="data" required="true"
					requiredMessage="O campo nome não pode estar em branco"></h:inputText>
				<h:message for="data" style="color:red"></h:message>
				<br>
				<br>

				<h:commandButton value="Salvar" action="#{noticiaController.salvar}"
					styleClass="btn btn-success"></h:commandButton>
			</h:form>
		</center>
	</f:view>
</body>
</html>