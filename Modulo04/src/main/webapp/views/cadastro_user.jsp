<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"
	import="model.Cliente" import="model.Local" import="java.util.List"%>

<%
@SuppressWarnings("unchecked")
List<Cliente> clientes = (List<Cliente>) request.getAttribute("clientes");

@SuppressWarnings("unchecked")
List<Local> locais = (List<Local>) request.getAttribute("locais");
%>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
<meta charset="UTF-8">
<title>Criar sua conta</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="./assents/css/style.css">
</head>
<body>
	<div class="main">
		<!--BARRA DE NAVEGAÇÃO-->
		<header>
			<%@include file="../assents/components/navbar.jsp"%>
		</header>
		<!--BARRA DE NAVEGAÇÃO-->

		<!--CONTEUDO-->
		<main
			class="d-flex justify-content-center align-items-center form-box">
			<!--FORMULÁRIO-->
			<section class="login my-5">
				<h2>CRIAR CONTA</h2>
				<form action="./cliente-save">
					<div class="mb-3">
						<label for="name" class="form-label">Nome Completo</label> <input
							type="text" class="form-control" id="name" name="name">
					</div>
					<div class="mb-3">
						<label for="cpf" class="form-label">CPF</label> <input type="text"
							class="form-control" id="cpf" name="cpf"
							placeholder="xxx.xxx.xxx-xx">
					</div>
					<div class="mb-3">
						<label for="date" class="form-label">Data de nascimento</label> <input
							type="text" class="form-control" id="date" name="date"
							placeholder="dd/mm/aaaa">
					</div>
					<div class="mb-3">
						<label for="tel" class="form-label">Telefone</label> <input
							type="tel" class="form-control" id="tel" name="tel"
							placeholder="(xx) xxxxx-xxxx">
					</div>
					<div class="mb-3">
						<label for="idLocal" class="form-label"> Cidade </label> <select
							id="idLocal" name="idLocal" class="form-select">
							<option value="DEFAULT">Escolha uma cidade</option>
							<%
							for (Local l : locais) {
							%>
							<option value="<%=l.getId()%>"><%=l.getCidade() + "-" + l.getUf()%></option>
							<%
							}
							%>
						</select>
					</div>
					<div class="mb-3">
						<label for="log" class="form-label">Logradouro</label> <input
							type="text" class="form-control" id="log" name="log">
					</div>
					<div class="mb-3">
						<label for="email" class="form-label">Email</label> <input
							type="email" class="form-control" id="email" name="email">
					</div>
					<div class="mb-3">
						<label for="senha" class="form-label">Senha</label> <input
							type="password" class="form-control" id="senha" name="senha">
					</div>
					<div class="col-lg-4 mb-2 d-grid">
						<button type="submit" class="btn btn-primary">Cadastrar</button>
					</div>
				</form>
			</section>
			<!--FORMULÁRIO-->
		</main>
		<!--CONTEUDO-->
	</div>
	<!--SCRIPT-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>