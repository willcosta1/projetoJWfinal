<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
<%@include file="menu.jsp" %>
	<f:view>
		<center>
		<h:form>
		<h:outputLabel value="ID Adocao "></h:outputLabel><br>
			<h:inputText value="#{adocaoController.adocao.idAdocao}" id="IdAdocao" required="true" requiredMessage= "O campo ID Adoção não pode estar em branco"></h:inputText>
			<h:message for="ID adocao" style="color:red"></h:message><br/><br>
			
			<h:outputLabel value="Animal "></h:outputLabel>
				<h:inputText value="#{adocaoController.adocao.animal}" id="animal" required="true" requiredMessage= "O campo animal não pode estar em branco"></h:inputText>
			<h:message for="animal" style="color:red"></h:message><br/><br>
			
			<h:outputLabel value="Usuario "></h:outputLabel><br>
			<h:inputText value="#{adocaoController.adocao.usuario}" id="usuario" required="true" requiredMessage= "O campo usuario não pode estar em branco"></h:inputText>
			<h:message for="usuario" style="color:red"></h:message><br/><br>
			
			<h:outputLabel value="Data "></h:outputLabel><br>
			<h:inputText value="#{adocaoController.adocao.data}" id="data" required="true" requiredMessage= "O campo data não pode estar em branco"></h:inputText>
			<h:message for="data" style="color:red"></h:message><br/><br/>
			<br/>
			
			<h:commandButton type="reset" value="Apagar" styleClass="btn btn-info"></h:commandButton>
			<h:commandButton value="Salvar" action="#{adocaoController.salvar}" styleClass="btn btn-success"></h:commandButton>
		</h:form>	
		</center>
	</f:view>
</body>
</html>