<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
    <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Cadastro de Usuário</title>
</head>
<body>
	<%@include file="menu.jsp" %>
	<f:view>
	<center>
		<h:form>
		<h2>Cadastro de Usuário</h2>
		<h4>Dados Pessoais</h4>
			<h:outputLabel value="Nome"></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.nome}" id="nome" required="true" requiredMessage= " O campo nome não pode estar em branco"></h:inputText>
			<h:message for="Nome" style="color:red"></h:message>
		<br><br>
			<h:outputLabel value="Idade "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.idade}" id="idade" required="true" requiredMessage= " O campo idade não pode estar em branco"></h:inputText>
			<h:message for="Idade" style="color:red"></h:message>
		<br><br>
			<h:outputLabel value="Genero "></h:outputLabel><br>
			<h:selectOneMenu value="#{usuarioController.usuario.genero}" id="genero" required="true" requiredMessage=" O campo não pode estar em branco">
			<f:selectItem itemValue="Masculino" itemLabel="Masculino" />
			<f:selectItem itemValue="Feminino" itemLabel="Feminino" />
			<f:selectItem itemValue="Outro" itemLabel="Outro" />
			</h:selectOneMenu>
		<br><br>
		<h4>Endereço</h4>
			<h:outputLabel value="Logradouro "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.logradouro}" id="logradouro" required="true" requiredMessage=" O campo logradouro não pode estar em branco"/>
			<h:message for="Logradouro" style="color:red"></h:message>
		<br><br>
			<h:outputLabel value="Numero "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.numero}" id="numero" required="true" requiredMessage=" O campo número não pode estar em branco"></h:inputText>
			<h:message for="Numero" style="color:red"></h:message>
		<br><br>
			<h:outputLabel value="CEP "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.cep}" id="cep" required="true" maxlength="8" requiredMessage=" O campo não pode estar em branco"></h:inputText>
			<h:message for="CEP" style="color:red"></h:message>
		<br><br>
			<h:outputLabel value="Bairro "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.bairro}" id="bairro" required="true" requiredMessage=" O campo não pode estar em branco"></h:inputText>
			<h:message for="Bairro" style="color:red"></h:message>
		<br><br>
			<h:outputLabel value="Cidade "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.cidade}" id="cidade" required="true" requiredMessage=" O campo não pode estar em branco"></h:inputText>
			<h:message for="Cidade" style="color:red"></h:message>
		<br><br>
			<h:outputLabel value="UF "></h:outputLabel><br>
			<h:selectOneMenu value="#{usuarioController.usuario.uf}" id="uf" required="true">
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
			</h:selectOneMenu>
		<br><br>
		<h4>Contato</h4>
			<h:outputLabel value="Telefone (DDD-XXXXX-XXXX) "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.telefone}" id="telefone" maxlength="11" required="true" requiredMessage=" O campo não pode estar e branco"></h:inputText>
			<h:message for="telefone" style="color:red"></h:message>
		<br><br>		
			<h:outputLabel value="E-mail "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.email}" id="email" required="true" requiredMessage= " O campo não pode estar em branco"></h:inputText>
			<h:message for="E-mail" style="color:red"></h:message>
		<br><br>
		<h4>Informações de login</h4>
			<h:outputLabel value="CPF "></h:outputLabel><br>
			<h:inputText value="#{usuarioController.usuario.cpf}" id="cpf" maxlength="11" required="true" requiredMessage=" O campo não pode estar em branco"></h:inputText>
			<h:message for="CPF" style="color:red"></h:message>
		<br><br>			
			<h:outputLabel value="Senha "></h:outputLabel><br>
			<h:inputSecret value="#{usuarioController.usuario.senha}" id="senha" required="true" requiredMessage= " O campo Senha não pode estar em branco"></h:inputSecret>
			<h:message for="senha" style="color:red"></h:message>
		<br><br>
			<h:commandButton type="reset" value="Apagar" styleClass="btn btn-info" style="display:inline;margin:0 5px" ></h:commandButton>
			<h:commandButton value=" Cadastrar" action="#{usuarioController.salvar}" styleClass="btn btn-success" style="display:inline;margin:0 5px"></h:commandButton>
				
		</h:form>
			
	</center>
	</f:view>
</body>
</html>