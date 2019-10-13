<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
					pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
	<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Usuários Cadastrados</title>
</head>
	<body>
	<%@include file="menu.jsp" %>
	<f:view>
	<h:form>
	<h:dataTable id="cadastrado" value="#{usuarioController.listarUsuario}" var="usuario" styleClass="table">
	
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value=" Nome " /> 
	      </f:facet> 
		<h:outputText value="#{usuario.nome}"/> 
		</h:column>
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value=" Idade " /> 
	      </f:facet> 
		<h:outputText value="#{usuario.idade}"/> 
		</h:column>
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value=" Gênero " /> 
	      </f:facet> 
		<h:outputText value="#{usuario.genero}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value=" Bairro " /> 
	      </f:facet> 
		<h:outputText value="#{usuario.bairro}"/> 
		</h:column>
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value=" UF " /> 
	      </f:facet> 
		<h:outputText value="#{usuario.uf}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value=" Telefone " /> 
	      </f:facet> 
		<h:outputText value="#{usuario.telefone}"/> 
		</h:column>
		
		<h:column>
			<f:facet name="header">					
			</f:facet>
			<h:commandLink  value="Excluir" action="#{usuarioController.excluir}">
				<f:param name="cod" value="#{usuario.cod}" />				
			</h:commandLink>	
		</h:column>
		
		<h:column>
			<f:facet name="header">					
			</f:facet>
			<h:commandLink  value="Alterar" action="#{usuarioController.alterar}">
				<f:param name="cod" value="#{usuario.cod}" />				
			</h:commandLink>
		</h:column>
		  		
		</h:dataTable>
	</h:form>
	</f:view>
	
	</body>
</html>