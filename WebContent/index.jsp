<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
				pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
    <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<title>Seja Bem Vindo</title>
</head>
	<body>
	<%@include file="menu.jsp" %>
	<f:view>
	<center>
	<table>
		<tr>
		<td>
		<br><h:outputLabel value="Animal "></h:outputLabel><br>
		<br/>
		<a href="CadastrarAnimal.jsp">Cadastrar animal</a><br>
		<a href="ListarAnimaisFuncionario.jsp">Gerenciar animal</a><br>
		<a href="ListarAnimaisUsuario.jsp">Listar animais (usuario)</a><br>
		<br/>
		</td>
		<td>
		
		</td>
		<td>
		<br><h:outputLabel value="Noticia"></h:outputLabel><br>
		<br/>
		<a href="CadNoticia.jsp">Cadastrar noticia</a><br>
		<a href="Noticias.jsp">Noticias</a><br>
		<a href="GerenciarNoticias.jsp">Gerenciar noticias</a><br>
		<br/>
		</td>
		</tr>
	
		<tr>
		<td>
		<br><h:outputLabel value="Usuario"></h:outputLabel><br>
		<br/>
		<a href="cadastroUsuario.jsp">Cadastrar usuario</a><br>
		<a href="listarUsuarios.jsp">Gerenciar Usuarios</a><br>
		<br/>
		</td>
		<td>
		</td>
		<td>
		
		<br><h:outputLabel value="Funcionario"></h:outputLabel><br>
		<br/>
		<a href="CadastroFuncionario.jsp">Cadastrar funcionario</a><br>
		<a href="ListarFuncionarios.jsp">Gerenciar funcionarios</a><br>
		<br/>
		</td>
		</tr>
		<tr>
		<td>
		<br><h:outputLabel value="Chamado"></h:outputLabel><br>
		<br/>
		<a href="AbrirChamado.jsp">Abrir chamado</a><br>
		<a href="ListarChamados.jsp">Gerenciar chamados</a><br>
		<br/>
		</td>
		<td>
		<p style="color: white;">EASTER EGG, RAFA É LEGAL</p>
		</td>
		<td>
		<br><h:outputLabel value="Adoção"></h:outputLabel><br>
		<br/>
		<a href="CadAdocao.jsp">Realizar adoção</a><br>
		<a href="ListarAdocao.jsp">Adoções</a><br>
		<br/>
		</td>
		</tr>
		</table>
		</center>
	</f:view>
	</body>
</html>