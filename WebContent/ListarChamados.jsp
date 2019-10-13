<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
					pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
	<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Chamados em aberto</title>
</head>
	<body>
		<%@include file="menu.jsp" %>
		<center>
		<br><br>
		<f:view>
			<h:form>
				<h:dataTable value="#{chamadoController.listarChamados}" var="chamado" styleClass="table">
					<h:column>
						<f:facet name="header"> 
							<!--<h:outputText value="Especie" /> -->
						</f:facet> 
						<h:outputText value="#{chamado.tipo}"/> 
					</h:column> 
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Porte" /> 
						</f:facet> 
						<h:outputText value="#{chamado.porte}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Cor" /> 
						</f:facet> 
						<h:outputText value="#{chamado.cor}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Logradouro" /> 
						</f:facet> 
						<h:outputText value="#{chamado.logradouro}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Numero" /> 
						</f:facet> 
						<h:outputText value="#{chamado.numero}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="CEP" /> 
						</f:facet> 
						<h:outputText value="#{chamado.cep}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Bairro" /> 
						</f:facet> 
						<h:outputText value="#{chamado.bairro}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Cidade" /> 
						</f:facet> 
						<h:outputText value="#{chamado.cidade}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="UF" /> 
						</f:facet> 
						<h:outputText value="#{chamado.uf}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Aberto em" /> 
						</f:facet> 
						<h:outputText value="#{chamado.date}"/> 
					</h:column> 
					
					<h:column > 
						<f:facet name="header"> 
							<h:outputText value="Status" /> 
						</f:facet> 
						<h:outputText value="#{chamado.status}"/> 
					</h:column> 
					
					<h:column>
						<f:facet name="header"></f:facet>
						<h:commandLink value="Fechar " action="#{chamadoController.atualizar}">
							<f:param name="id" value="#{chamado.idChamado}" />
						</h:commandLink>
					</h:column>	
					
					<h:column>
						<h:commandLink value="excluir" action="#{chamadoController.excluir}">
							<f:param name="id" value="#{chamado.idChamado}"/>
						</h:commandLink>
					</h:column>
				</h:dataTable>
			</h:form>
		</f:view>
		</center>
	</body>
</html>