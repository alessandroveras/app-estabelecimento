<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AppEstabelecimento</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container mt-3">
		<h2>Cadastramento de Funcionarios</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/funcionario/incluir" method="post">

			<div class="mb-3 mt-3">
				<label>Nome:</label> <input type="text" class="form-control"
					placeholder="Entre com o seu nome" name="nome"
					value="Funcinario APP">
			</div>

			<div class="mb-3 mt-3">
				<label>Login:</label> <input type="text" class="form-control"
					placeholder="Entre com o seu login" name="login"
					value="funcionario.app">
			</div>

			<div class="mb-3 mt-3">
				<label>Senha:</label> <input type="password" class="form-control"
					placeholder="Entre com o sua senha" name="senha" value="AAAbbbCCC">
			</div>

			<div class="mb-3 mt-3">
				<label>CPF:</label> <input type="text" class="form-control"
					placeholder="Entre com o CPF" name="cpf"
					value="101.777.497-06">
			</div>

			<div class="mb-3 mt-3">
				<label>Email:</label> <input type="email" class="form-control"
					placeholder="Entre com o email" name="email"
					value="funcionario@app.com">
			</div>

			<div class="mb-3 mt-3">
				<label>Telefone:</label> <input type="text" class="form-control"
					placeholder="Entre com o telefone" name="telefone"
					value="219999-0000">
			</div>
			
			<div class="mb-3 mt-3">
				<label>Estabelecimento:</label> <input type="text" class="form-control"
					placeholder="Entre com o id do estabelecimento" name="estabelecimento.id"
					value="1">
			</div>
			
			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>
	</div>

</body>
</html>