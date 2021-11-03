<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Agenda de contatos</title>
<link rel="stylesheet" href="style.css">
<link rel="icon" href="imagens/phone.png">
</head>
<body>
	<h1>Editar contato</h1>
	<form name="frmContatos" action="update">
		<table>
			<tr>
				<td><input type="text" name="idcon" id="Caixa3" readonly value="<%out.print(request.getAttribute("idcon"));%>"></td>
			</tr>
		
			<tr>
				<td><input type="text" name="nome" class="Caixa1" value="<%out.print(request.getAttribute("nome")); %>"></td>
			</tr>

			<tr>
				<td><input type="text" name="fone" class="Caixa2" value="<%out.print(request.getAttribute("fone")); %>"></td>
			</tr>

			<tr>
				<td><input type="text" name="email" class="Caixa1" value="<%out.print(request.getAttribute("email"));%>"></td>
			</tr>
		</table>
		<input type="button" value="Salvar" class="Botao1"
			onclick="validar()">
	</form>
	<script src="scripts/validador.js"></script>
	
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