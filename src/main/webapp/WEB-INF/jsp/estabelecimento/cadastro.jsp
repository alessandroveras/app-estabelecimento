<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container mt-3">
		<h2>Cadastramento de Estabelecimentos</h2>

		<c:if test="${not empty mensagem}">
			<div class="alert alert-success">
				<strong>Confirmação!</strong> ${mensagem}
			</div>
		</c:if>

		<form action="/estabelecimento/incluir" method="post">
			<div class="mb-3 mt-3">
				<label>Nome:</label> <input type="text" class="form-control"
					placeholder="Entre com o seu nome" name="nome"
					value="Estabelecimento APP">
			</div>

			<div class="mb-3 mt-3">
				<label>Login:</label> <input type="text" class="form-control"
					placeholder="Entre com o seu login" name="login"
					value="estabelecimento.app">
			</div>

			<div class="mb-3 mt-3">
				<label>Senha:</label> <input type="password" class="form-control"
					placeholder="Entre com o sua senha" name="senha" value="AAAbbbCCC">
			</div>

			<div class="mb-3 mt-3">
				<label>CNPJ:</label> <input type="text" class="form-control"
					placeholder="Entre com o CNPJ" name="cnpj"
					value="00.673.757/0001-41">
			</div>

			<div class="mb-3 mt-3">
				<label>Endereço:</label> <input type="text" class="form-control"
					placeholder="Entre com o endereço" name="endereco"
					value="Rua Barao da Torre, 99">
			</div>

			<div class="checkbox">
				<label><input type="checkbox" name="edtech" value="true">Edtech:</label>
			</div>


			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>
	</div>

</body>
</html>