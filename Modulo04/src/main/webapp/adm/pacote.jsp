<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recode Viagens</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<link rel="stylesheet" href="../assents/css/style.css">
<link rel="stylesheet" href="../assents/css/icons.css">
</head>
<body>
	<div class="main">
		<header>
			<%@include file="../assents/components/navbarAdm.jsp"%>
		</header>

		<main class="container conteudo my-4 p-4">
			<h1 class="mb-4">Pacotes</h1>

			<!-- Cadastro de pacotes -->
			<h3>Cadastro de pacote</h3>
			<form class="mb-4">

				<!-- Dados a serem preenchidos -->
				<div class="mb-4 row">
					<div class="col">
						<label for="inputName" class="form-label">Nome do Pacote</label> <input
							type="text" class="form-control mb-4" id="inputName">
					</div>
					<div class="col">
						<label for="inputName" class="form-label">Descrição</label>
						<textarea class="form-control"
							placeholder="máximo 500 caracter..." id="floatingTextarea"
							style="height: 40%">
						</textarea>
					</div>
				</div>

				<!-- Adicação de Voos -->
				<div>
					<table class="table">
						<div class="d-flex justify-content-between">
							<h5>Voos</h5>

							<!-- Adicionar novo voo -->
							<div>
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#staticBackdrop">
									Adicionar voo</button>

								<!-- Modal -->
								<div class="modal fade modal-lg" id="staticBackdrop"
									data-bs-backdrop="static" data-bs-keyboard="false"
									tabindex="-1" aria-labelledby="staticBackdropLabel"
									aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="staticBackdropLabel">Adicionar
													voos</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<div class="d-flex justify-content-between">
													<div class="form-floating mb-3">
														<input type="text" class="form-control" id="floatingInput"
															placeholder="Digite a cidade de partida..."> <label
															for="floatingInput">Partida</label>
													</div>
													<div class="form-floating mb-3">
														<input type="text" class="form-control" id="floatingInput"
															placeholder="Digite a cidade de destino..."> <label
															for="floatingInput">Destino</label>
													</div>
													<div class="form-floating mb-3">
														<input type="date" class="form-control" id="floatingInput">
														<label for="floatingInput">Data</label>
													</div>
													<a href="save?id=${contato.id}" class="btn btn-primary">Buscar</a>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-bs-dismiss="modal">Concluir</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Tabela com voos incluidos -->
						<thead>
							<tr>
								<th>ID</th>
								<th>Data</th>
								<th>Horário</th>
								<th>Partida</th>
								<th>Destino</th>
								<th>Concecionária</th>
								<th>Classe</th>
								<th>Valor</th>
								<th>Ações</th>
							</tr>
						</thead>
						<tbody>
							<jstl:forEach items="${listaContatos}" var="contato">
								<tr>
									<td>${contato.nome}</td>
									<td>${contato.idade}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td><a href="editar?id=${contato.id}" class="btn"><i
											class="gg-pen"></i></a> <a href="excluir?id=${contato.id}"
										onclick="return confirm('Deseja Excluir?')" class="btn"><i
											class="gg-close"></i></a></td>
								</tr>
							</jstl:forEach>
						</tbody>
					</table>
				</div>

				<!-- Adição de reservas -->
				<div>
					<table class="table">
						<div class="d-flex justify-content-between">
							<h5>Reservas</h5>

							<!-- Cadastrar nova reserva -->
							<div>
								<button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#staticBackdrop">
									Cadastrar reserva</button>

								<!-- Modal -->
								<div class="modal fade modal-lg" id="staticBackdrop"
									data-bs-backdrop="static" data-bs-keyboard="false"
									tabindex="-1" aria-labelledby="staticBackdropLabel"
									aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="staticBackdropLabel">Cadastrar
													Reserva</h5>
												<button type="button" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<div class="form-floating mb-3">
													<input type="text" class="form-control" id="floatingInput"
														placeholder="Digite o local da hospedagem..."> <label
														for="floatingInput">Local</label>
												</div>
												<div class="form-floating mb-3">
													<input type="text" class="form-control" id="floatingInput"
														placeholder="Digite o tipo de hospedagem..."> <label
														for="floatingInput">Tipo</label>
												</div>
												<div class="form-floating mb-3">
													<input type="text" class="form-control" id="floatingInput"
														placeholder="Escolha uma hospedagem..."> <label
														for="floatingInput">Hospedagem</label>
												</div>
												<div class="form-floating mb-3">
													<input type="date" class="form-control" id="floatingInput">
													<label for="floatingInput">Data</label>
												</div>
												<a href="save?id=${contato.id}" class="btn btn-primary">Buscar</a>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-primary"
													data-bs-dismiss="modal">Concluir</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Reservas incluidas -->
						<thead>
							<tr>
								<th>ID</th>
								<th>Local</th>
								<th>Tipo</th>
								<th>Hospedagem</th>
								<th>Hospedes</th>
								<th>Quartos</th>
								<th>Data entrada</th>
								<th>Data Saída</th>
								<th>Ações</th>
							</tr>
						</thead>
						<tbody>
							<jstl:forEach items="${listaContatos}" var="contato">
								<tr>
									<td>${contato.nome}</td>
									<td>${contato.idade}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td>${contato.dataCadastro}</td>
									<td><a href="editar?id=${contato.id}" class="btn"><i
											class="gg-pen"></i></a> <a href="excluir?id=${contato.id}"
										onclick="return confirm('Deseja Excluir?')" class="btn"><i
											class="gg-close"></i></a></td>
								</tr>
							</jstl:forEach>

						</tbody>
					</table>
				</div>
				<a href="save?id=${contato.id}" class="btn btn-primary">Cadastrar</a>
			</form>
			<!-- Fim Cadastro de Pacotes -->

			<!-- Pacotes cadastrados -->
			<table class="table">
				<h3>Pacotes cadastrados</h3>
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>Descrição</th>
						<th>CPF do Cliente</th>
						<th>Valor Total</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<jstl:forEach items="${listaContatos}" var="contato">
						<tr>
							<td>${contato.nome}</td>
							<td>${contato.idade}</td>
							<td>${contato.dataCadastro}</td>
							<td>${contato.dataCadastro}</td>
							<td>${contato.dataCadastro}</td>
							<td><a href="editar?id=${contato.id}" class="btn"><i
									class="gg-eye"></i></a> <a href="editar?id=${contato.id}"
								class="btn"><i class="gg-pen"></i></a> <a
								href="excluir?id=${contato.id}"
								onclick="return confirm('Deseja Excluir?')" class="btn"><i
									class="gg-close"></i></a></td>
						</tr>
					</jstl:forEach>
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