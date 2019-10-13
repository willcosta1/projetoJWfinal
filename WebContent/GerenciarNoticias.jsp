<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
					pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
	<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Gerenciador de noticias</title>
</head>
	<body>
	<%@include file="menu.jsp" %>
	<f:view>
	<center>
	<h:form>
	<h:dataTable id="noticia" value="#{noticiaController.listar}" var="n" styleClass="table">
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="IDN" /> 
	      </f:facet> 
		<h:outputText value="#{n.idNoticia}"/> 
		</h:column>
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="Titulo" /> 
	      </f:facet> 
		<h:outputText value="#{n.titulo}"/> 
		</h:column> 
		<h:column > 
	      <f:facet name="header"> 
		<h:outputText value="data" /> 
	      </f:facet> 
		<h:outputText value="#{n.dataPublicacao}"/> 
		</h:column>
		<h:column>
				<f:facet name="header">					
				</f:facet>
				<h:commandLink value="Alterar " action="#{noticiaController.alterar}">
					<f:param name="id" value="#{n.idNoticia}" />
				</h:commandLink>
		</h:column>	
		<h:column>
				<f:facet name="header">
				</f:facet>
				<h:commandLink value="excluir" action="#{noticiaController.excluir }">
					<f:param name="id" value="#{n.idNoticia }" />
				</h:commandLink>
				
			</h:column>
		</h:dataTable>
	</h:form>
	</center>
	</f:view>
	
	</body>
</html>