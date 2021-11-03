<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="model.JavaBeans"%>
    <%@ page import="java.util.ArrayList"%>
<%
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
/* for(int i = 0; i< lista.size(); i++){
	out.println(lista.get(i).getIdcon());
	out.println(lista.get(i).getNome());
	out.println(lista.get(i).getFone());
	out.println(lista.get(i).getEmail()); 
}*/
%>    
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de contatos</title>
<link rel="icon" href="imagens/phone.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de contatos</h1>
	<a href="novo.html" class="Botao1">novo contato</a>
	<a href="report" class="Botao2">Relatorio</a>
	<table id="tabela">
		<thead>
			<tr>
				
				<th>Nome</th>
				<th>Fone</th>
				<th>E-mail</th>
			</tr>
		</thead>
		<tbody>
			<%for(int i = 0; i<lista.size(); i++) { %>
				<tr>
					
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getFone() %></td>
					<td><%=lista.get(i).getEmail() %></td>
					<td><a href="select?idcon=<%=lista.get(i).getIdcon() %>" class="Botao1">Editar</a></td>
					<td><a href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)" class ="Botao2">Excluir</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
	<script src="scripts/confirmador.js"></script>
	
	<footer class="rodape">
		
		<div>
			<img src="imagens/git.png" class="imagemGit"><a href="https://github.com/carlos74109" class="BotaoGit">Meu GitHub</a>
		</div>	
		
		<div>
			<p class="texto">Meu E-mail: carlos-84@live.com</p>
		</div>
		
		<div>
			<p class="texto">Site feito por Carlos do Vale</p>
		</div>	
	</footer>
</body>
</html>