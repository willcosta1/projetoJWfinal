<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
	<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Gerenciar</title>
</head>
<body>
<%@include file="menu.jsp" %>
		<f:view>
		<center>
		<h:form>
		
			<b>Especie:</b><br>
			<h:selectOneRadio value="#{animalController.animal.especie}" id="especie" required="true" requiredMessage= "O campo não pode estar em branco">
				<f:selectItem  itemLabel="Cachorro" itemValue="Cachorro" />
				<f:selectItem  itemLabel="Gato"     itemValue="Gato"/>
			</h:selectOneRadio>
		    <h:message for="especie" style="color:red"></h:message>
			
			<b>Porte:</b><br>
			<h:selectOneRadio value="#{animalController.animal.porte}" id="porte" required="true" requiredMessage= "O campo não pode estar em branco">
				<f:selectItem  itemLabel="Pequeno" itemValue="Pequeno"   />
				<f:selectItem  itemLabel="Medio"   itemValue="Medio" />
				<f:selectItem  itemLabel="Grande"  itemValue="Grande"/>
			</h:selectOneRadio>
			<h:message for="porte" style="color:red"></h:message>
			
			<br><h:outputLabel value="Raca "></h:outputLabel><br>
			<h:inputText value="#{animalController.animal.raca }" id="Raca" required="true" requiredMessage= "O campo não pode estar em branco"></h:inputText>
			<h:message for="Raca" style="color:red"></h:message><br><br>
			
			<h:outputLabel value="Idade "></h:outputLabel><br>
			<h:inputText value="#{animalController.animal.idade}" id="Idade" required="true" requiredMessage= "O campo não pode estar em branco"></h:inputText>
			<h:message for="Idade" style="color:red"></h:message><br><br>
			
			<h:outputLabel value="Cor "></h:outputLabel><br>
			<h:inputText value="#{animalController.animal.cor}" id="Cor" required="true" requiredMessage= "O campo não pode estar em branco"></h:inputText>
			<h:message for="Cor" style="color:red"></h:message><br><br>
			
			<h:outputLabel value="Peso "></h:outputLabel><br>
			<h:inputText value="#{animalController.animal.peso }" id="Peso" required="true" requiredMessage= "O campo não pode estar em branco"></h:inputText>
			<h:message for="Peso" style="color:red"></h:message><br><br>		
		
			
			<b>Sexo:</b><br>
			<h:selectOneMenu value="#{animalController.animal.sexo}"  >
				<f:selectItem itemValue = "Macho" itemLabel = "Macho" /> 
   				<f:selectItem itemValue = "Femea" itemLabel = "Femea" /> 
			</h:selectOneMenu><br><br>
			
			<b>Disponivel para adoção?</b><br>
			<h:selectOneMenu value="#{animalController.animal.status}">			
				<f:selectItem itemValue = "Sim" itemLabel = "Sim" /> 
   				<f:selectItem itemValue = "Nao" itemLabel = "Não" /> 
			</h:selectOneMenu><br><br>
			
			<h:commandButton type="reset" value="Apagar" styleClass="btn btn-info" style="display:inline;margin:0 5px"></h:commandButton>
			<h:commandButton value="Salvar" action="#{animalController.salvar}" styleClass="btn btn-success" style="display:inline;margin:0 5px"></h:commandButton>
			
		</h:form>
		</center>
		</f:view>

</body>
</html>