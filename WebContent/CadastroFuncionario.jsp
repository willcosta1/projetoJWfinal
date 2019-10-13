<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
					pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
	<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Cadastro de Funcionario</title>
</head>
	<body>
		<%@include file="menu.jsp" %>
		<f:view>
		<center>
		<h:form>
		<h:outputLabel value="Nome "></h:outputLabel><br>
			<h:inputText value="#{funcionarioController.funcionario.nome}" id="nome" required="true" requiredMessage= "O campo nome não pode estar em branco"></h:inputText>
			<h:message for="nome" style="color:red"></h:message><br/><br>
			
			<h:outputLabel value="RF "></h:outputLabel><br>
				<h:inputText value="#{funcionarioController.funcionario.rf}" id="rf" required="true" requiredMessage= "O campo nome não pode estar em branco"></h:inputText>
			<h:message for="rf" style="color:red"></h:message><br/><br>
			
			<h:outputLabel value="Senha "></h:outputLabel><br>
			<h:inputText value="#{funcionarioController.funcionario.senha}" id="senha" required="true" requiredMessage= "O campo nome não pode estar em branco"></h:inputText>
			<h:message for="senha" style="color:red"></h:message><br/><br>
			
			<h:outputLabel value="Telefone "></h:outputLabel><br>
			<h:inputText value="#{funcionarioController.funcionario.telefone}" id="telefone" required="true" requiredMessage= "O campo nome não pode estar em branco"></h:inputText>
			<h:message for="telefone" style="color:red"></h:message><br/><br>
			
			<h:outputLabel value="E-Mail "></h:outputLabel><br>
			<h:inputText value="#{funcionarioController.funcionario.email}" id="email" required="true" requiredMessage= "O campo nome não pode estar em branco"></h:inputText>
			<h:message for="email" style="color:red"></h:message><br/><br/>
			<br/>
			
			<h:commandButton type="reset" value="Apagar" styleClass="btn btn-info" style="display:inline;margin:0 5px"></h:commandButton>
			<h:commandButton value="Salvar" action="#{funcionarioController.salvar}" styleClass="btn btn-success" style="display:inline;margin:0 5px"></h:commandButton>
			
		</h:form>
		</center>
		</f:view>

	</body>
</html>