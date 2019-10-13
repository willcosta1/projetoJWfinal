<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
		<title>Novo chamado</title>
	</head>
	
	<body>
		<%@include file="menu.jsp" %>
		<f:view>
			<center>
			<h:form>
				<br><h:outputLabel value="Especie"></h:outputLabel><br>
				<h:selectOneRadio value="#{chamadoController.chamado.tipo}" >
					<f:selectItem itemLabel="Cachorro" itemValue="Cachorro" />
					<f:selectItem itemLabel="Gato" itemValue="Gato" />
				</h:selectOneRadio><br>
				
				<h:outputLabel value="Porte"></h:outputLabel><br>
				<h:selectOneRadio value="#{chamadoController.chamado.porte}">
					<f:selectItem itemLabel="Pequeno" itemValue="Pequeno" />
					<f:selectItem itemLabel="Medio"   itemValue="Medio" />
					<f:selectItem itemLabel="Grande"  itemValue="Grande"/>
				</h:selectOneRadio>	<br>
				
				<h:outputLabel value="Cor"></h:outputLabel><br>
				<h:inputText value="#{chamadoController.chamado.cor}" id="cor" required="true" requiredMessage= "O campo não pode estar em branco"></h:inputText>
				<h:message for="cor" style="color:red"></h:message>	<br>
				
				<h:outputLabel value="Logradouro"></h:outputLabel><br>
				<h:inputText value="#{chamadoController.chamado.logradouro}" id="logradouro" required="true" requiredMessage= "O campo não pode estar em branco" ></h:inputText>
				<h:message for="logradouro" style="color:red"></h:message><br>
					
				<h:outputLabel value="Numero"></h:outputLabel><br>
				<h:inputText value="#{chamadoController.chamado.numero}" id="numero" required="true" requiredMessage= "O campo não pode estar em branco" ></h:inputText>
				<h:message for="numero" style="color:red"></h:message>	<br>
				
				<h:outputLabel value="CEP"></h:outputLabel><br>
				<h:inputText value="#{chamadoController.chamado.cep}" id="cep" required="true" requiredMessage= "O campo não pode estar em branco" ></h:inputText>
				<h:message for="cep" style="color:red"></h:message>	<br>
				
				<h:outputLabel value="Bairro"></h:outputLabel><br>
				<h:inputText value="#{chamadoController.chamado.bairro}" id="bairro" required="true" requiredMessage= "O campo não pode estar em branco" ></h:inputText>
				<h:message for="bairro" style="color:red"></h:message>	<br>
				
				<h:outputLabel value="Cidade"></h:outputLabel><br>
				<h:inputText value="#{chamadoController.chamado.cidade}" id="cidade" required="true" requiredMessage= "O campo não pode estar em branco" ></h:inputText>
				<h:message for="cidade" style="color:red"></h:message>	<br>
				
				<h:outputLabel value="UF"></h:outputLabel><br>
				<h:selectOneMenu value="#{chamadoController.chamado.uf}">
					<f:selectItem itemValue = "AC" itemLabel = "AC" /> 
		  			<f:selectItem itemValue = "AL" itemLabel = "AL" />
		  			<f:selectItem itemValue = "AP" itemLabel = "AP" /> 
		  			<f:selectItem itemValue = "AM" itemLabel = "AM" />
		  			<f:selectItem itemValue = "BA" itemLabel = "BA" /> 
		  			<f:selectItem itemValue = "CE" itemLabel = "CE" />
		  			<f:selectItem itemValue = "DF" itemLabel = "DF" /> 
		  			<f:selectItem itemValue = "ES" itemLabel = "ES" /> 
		  			<f:selectItem itemValue = "GO" itemLabel = "GO" />
		  			<f:selectItem itemValue = "MA" itemLabel = "MA" /> 
		  			<f:selectItem itemValue = "MT" itemLabel = "MT" />
		  			<f:selectItem itemValue = "MS" itemLabel = "MS" /> 
		  			<f:selectItem itemValue = "MG" itemLabel = "MG" />
		  			<f:selectItem itemValue = "PA" itemLabel = "PA" /> 
		  			<f:selectItem itemValue = "PB" itemLabel = "PB" /> 
		  			<f:selectItem itemValue = "PR" itemLabel = "PR" />
		  			<f:selectItem itemValue = "PE" itemLabel = "PE" /> 
		  			<f:selectItem itemValue = "PI" itemLabel = "PI" />
		  			<f:selectItem itemValue = "RJ" itemLabel = "RJ" /> 
		  			<f:selectItem itemValue = "RN" itemLabel = "RN" />
		  			<f:selectItem itemValue = "RS" itemLabel = "RS" /> 
		  			<f:selectItem itemValue = "RO" itemLabel = "RO" /> 
		  			<f:selectItem itemValue = "RR" itemLabel = "RR" />
		  			<f:selectItem itemValue = "SC" itemLabel = "SC" /> 
		  			<f:selectItem itemValue = "SP" itemLabel = "SP" />
		  			<f:selectItem itemValue = "SE" itemLabel = "SE" /> 
		  			<f:selectItem itemValue = "TO" itemLabel = "TO" />		
				</h:selectOneMenu><br>
				
				<h:outputLabel value="Complemento"></h:outputLabel><br>
				<h:inputText value="#{chamadoController.chamado.complemento}" id="complemento"></h:inputText><br><br>
				
				<h:commandButton value="Salvar" action="#{chamadoController.salvar}" styleClass="btn btn-success"></h:commandButton>	
				
			 </h:form>
			</center>
		</f:view>
	</body>
</html>