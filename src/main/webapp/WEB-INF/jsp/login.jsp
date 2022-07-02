<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>AppEstabelecimento</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
</head>
<body>
	<c:import url="/WEB-INF/jsp/menu.jsp" />

	<div class="container mt-3">

		<c:if test="${not empty msg}">
			<div class="alert alert-warning alert-dismissible fade show">
				<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
				<strong>Atenção!</strong> ${msg}
			</div>
		</c:if>

		<h2>Autenticação</h2>
		<form action="/usuario/validar" method="post">
			<div class="mb-3 mt-3">
				<label>Login:</label> <input type="text" class="form-control"
					placeholder="Entre com o seu login" name="login"
					value="alessandro.veras">
			</div>

			<div class="mb-3">
				<label>Senha:</label> <input type="password" class="form-control"
					placeholder="Entre com a sua senha" name="senha" value="uujajahyyag">
			</div>

			<button type="submit" class="btn btn-primary">Acessar</button>
		</form>
	</div>
</body>
</html>