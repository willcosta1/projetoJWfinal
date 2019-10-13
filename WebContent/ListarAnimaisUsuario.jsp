<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
					pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
	<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Animais para adoção</title>
</head>
	<body>
	<%@include file="menu.jsp" %>
	<f:view>
	<h:form>
	<h:dataTable id="adocado" value="#{animalController.listarAnimaisUsuario}" var="animaladocao" styleClass="table">
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Especie" /> 
	      </f:facet> 
		<h:outputText value="#{animaladocao.especie}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Porte" /> 
	      </f:facet> 
		<h:outputText value="#{animaladocao.porte}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Raca" /> 
	      </f:facet> 
		<h:outputText value="#{animaladocao.raca}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Idade" /> 
	      </f:facet> 
		<h:outputText value="#{animaladocao.idade}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Cor" /> 
	      </f:facet> 
		<h:outputText value="#{animaladocao.cor}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Peso" /> 
	      </f:facet> 
		<h:outputText value="#{animaladocao.peso}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Sexo" /> 
	      </f:facet> 
		<h:outputText value="#{animaladocao.sexo}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Disponivel para adoção?" /> 
	      </f:facet> 
		<h:outputText value="#{animaladocao.status}"/> 
		</h:column> 		
		</h:dataTable>
	</h:form>
	</f:view>
	
	</body>
</html>