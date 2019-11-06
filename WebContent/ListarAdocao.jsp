<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<title>Listar Adoção</title>
</head>
<body>
	<%@include file="menu.jsp"%>
	<f:view>
		<h:form>
			<h:dataTable styleClass="table">
				<h:column>
					<f:facet name="header">
						<h:outputText value="Id " />
					</f:facet>
					<h:outputText value="#{adocao.IdAdocao}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:outputText value="Animal " />
					</f:facet>
					<h:outputText value="#{adocao.Animal}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:outputText value="Usuario " />
					</f:facet>
					<h:outputText value="#{adocao.Usuario}" />
				</h:column>

				<h:column>
					<f:facet name="header">
						<h:outputText value="Data " />
					</f:facet>
					<h:outputText value="#{adocao.Dat}" />
				</h:column>

				<h:column>
					<f:facet name="header">
					</f:facet>
					<h:commandLink value="Excluir" action="#{adocaoController.excluir}">
						<f:param name="id" value="#{adocao.idAnimal}" />
					</h:commandLink>
				</h:column>
				<h:column>
					<f:facet name="header">
					</f:facet>
					<h:commandLink value="Alterar "
						action="#{adocaoController.alterar}">
						<f:param name="id" value="#{adocao.IdAdocao}" />
					</h:commandLink>

				</h:column>

			</h:dataTable>

		</h:form>
	</f:view>
</body>
</html>