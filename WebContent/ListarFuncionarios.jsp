<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
					pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
	<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Lista de Funcionários</title>
</head>
	<body>
		<%@include file="menu.jsp" %>
		<center>
		<br><br>
		<f:view>
			<h:form>
				<h:dataTable value="#{funcionarioController.listarTodos}" var="funcionario" styleClass="table">
					<h:column>
						<f:facet name="header"> 
							<!--<h:outputText value="Nome" /> -->
						</f:facet> 
						<h:outputText value="#{funcionario.nome}"/> 
					</h:column> 
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="RF" /> 
						</f:facet> 
						<h:outputText value="#{funcionario.rf}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Telefone" /> 
						</f:facet> 
						<h:outputText value="#{funcionario.telefone}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="E-mail" /> 
						</f:facet> 
						<h:outputText value="#{funcionario.email}"/> 
					</h:column> 					
					
					<h:column>
						<h:commandLink value="Alterar " action="#{funcionarioController.alterar}">
							<f:param name="id" value="#{funcionario.cod}" />
						</h:commandLink>
					
						<h:commandLink value="excluir" action="#{funcionarioController.excluir}">
							<f:param name="id" value="#{funcionario.cod}"/>
						</h:commandLink>
					</h:column>
				</h:dataTable>
			</h:form>
		</f:view>
		</center>
	</body>
</html>