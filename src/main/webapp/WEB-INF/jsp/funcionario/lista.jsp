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

		<form action="/funcionario/${enrede} }" method="get">
			<button type="submit" class="btn btn-primary">Novo</button>
		</form>

		<form action="">
			<div class="form-group">
				<label for="sel1">Estabelecimentos:</label> <select class="form-control"
					id="sel1">
					<c:forEach var="estabelecimento" items="${estabelecimentos}">
						<option>${estabelecimento.nome}</option>
					</c:forEach>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">Consultar</button>
		</form>
		
	</div>
</body>
</html>