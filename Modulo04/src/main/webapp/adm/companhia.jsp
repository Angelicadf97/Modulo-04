<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"
	import="model.Companhia" import="java.util.List"%>

<%
@SuppressWarnings("unchecked")
List<Companhia> companhias = (List<Companhia>) request.getAttribute("companhias");
%>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
<meta charset="UTF-8">
<title>Recode Viagens</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="./assents/css/style.css">
<link rel="stylesheet" href="./assents/css/icons.css">
</head>
<body>
	<div class="main">
		<header>
			<%@include file="../assents/components/navbarAdm.jsp"%>
		</header>

		<main class="container conteudo my-4 p-4">
			<h1 class="mb-4">Companhias</h1>
			<form class="my-4" action="./companhia-save">
				<h3>Cadastro de companhia</h3>
				<div class="row mb-3">
					<div class="col">
						<label for="name" class="form-label">Nome da
							Companhia</label> <input type="text" class="form-control" id="name"
							name="name" required>
					</div>
					<div class="col">
						<label for="cnpj" class="form-label">CNPJ</label> <input
							type="text" class="form-control" id="cnpj" name="cnpj" required
							placeholder="00.000.000/0000-00">
					</div>
				</div>
				<div class="mt-4">
					<input type="submit" value="Cadastrar" class="btn btn-primary">
				</div>
			</form>
			<table class="table">
				<h3>Companhias cadastradas</h3>
				<thead>
					<tr>
						<th>ID</th>
						<th>CNPJ</th>
						<th>Nome</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Companhia c : companhias) {
					%>
					<tr>
						<td><%=c.getId()%></td>
						<td><%=c.getCnpj()%></td>
						<td><%=c.getNome()%></td>
						<td class="d-flex justify-content-start align-items-center">
							<div>
								<!-- Button trigger modal -->
								<button class="btn" type="button" data-bs-toggle="modal"
									data-bs-target="#staticBackdrop<%=c.getId()%>">
									<i class="gg-pen"></i>
								</button>

								<!-- Modal -->
								<div class="modal fade" id="staticBackdrop<%=c.getId()%>"
									data-bs-backdrop="static" data-bs-keyboard="false"
									tabindex="-1" aria-labelledby="staticBackdropLabel"
									aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="staticBackdropLabel">Atualização</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<form action="./companhia-update">
												<div class="modal-body">
													<label for="idUpdate" class="form-label">ID</label> <input
														type="text" class="form-control mb-3" id="idUpdate"
														name="idUpdate" value="<%=c.getId()%>" readonly /> <label
														for="nameUpdate" class="form-label">Nome da
														Companhia</label> <input type="text"
														class="form-control mb-3" id="nameUpdate"
														name="nameUpdate" value="<%=c.getNome()%>" required>
													<label for="cnpjUpdate" class="form-label">CNPJ</label> <input
														type="text" class="form-control" id="cnpjUpdate"
														name="cnpjUpdate" readonly value="<%=c.getCnpj()%>">
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-bs-dismiss="modal">Cancelar</button>
													<button class="btn btn-primary" type="submit">Atualizar</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div> <a href="./companhia-delet?id=<%=c.getId()%>"
							onclick="return confirm('Deseja Excluir?')" class="btn"><i
								class="gg-close"></i></a>
						</td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
		</main>
	</div>
	<!--SCRIPT-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>