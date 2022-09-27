<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"
	import="model.Hospedagem" import="model.Local" import="java.util.List"%>

<%
@SuppressWarnings("unchecked")
List<Hospedagem> hosps = (List<Hospedagem>) request.getAttribute("hospedagens");

@SuppressWarnings("unchecked")
List<Local> locais = (List<Local>) request.getAttribute("locais");
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
			<h1 class="mb-4">Reservas</h1>
			<form class="my-4" action="./reserva-save">
				<h3>Cadastro de reserva</h3>
				<div class="row mb-3">
					<div class="col">
						<label for="idHos" class="form-label">Nome da Hospedagem</label> <select
							id="idHos" name="idHos" class="form-select">
							<option value="DEFAULT">Escolha uma hospedagem</option>
							<%
							for (Hospedagem h : hosps) {
							%>
							<option value="<%=h.getId()%>"><%=h.getTipo() + " - " + h.getNome() + " - " + h.getLocal().getCidade()  + "/" + h.getLocal().getUf() %></option>
							<%
							}
							%>
						</select>
					</div>
					<div class="col">
						<label for="idPac" class="form-label">Vincular ao pacote ID</label> <input
							type="number" class="form-control" id="idPac" name="idPac">
					</div>
				</div>
				<div class="row mb-4">
					<div class="col">
						<label for="quartos" class="form-label">Quantidade de quartos:</label> <input
							type="number" class="form-control" id="quartos" name="quartos" required>
					</div>
					<div class="col">
						<label for="hospedes" class="form-label">Quantidade de hospedes:</label> <input
							type="number" class="form-control" id="hospedes" name="hospedes" required>
					</div>
					<div class="col">
						<label for="dataEnt" class="form-label">Data de entrada</label> <input
							type="text" class="form-control" id="dataEnt" name="dataEnt" required>
					</div>
					<div class="col">
						<label for="dataSaida" class="form-label">Data de saída</label> <input
							type="text" class="form-control" id="dataSaida" name="dataSaida" required>
					</div>
					<div class="mt-4">
						<input type="submit" value="Cadastrar"
							class="btn btn-primary">
					</div>
				</div>
			</form>
			<table class="table">
				<h3>Pacotes cadastrados</h3>
				<thead>
					<tr>
						<th>ID</th>
						<th>CNPJ</th>
						<th>Nome</th>
						<th>Tipo</th>
						<th>Valor da diária</th>
						<th>Cidade</th>
						<th>Uf</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Hospedagem h : hosps) {
					%>
					<tr>
						<td><%=h.getId()%></td>
						<td><%=h.getCnpj()%></td>
						<td><%=h.getNome()%></td>
						<td><%=h.getTipo()%></td>
						<td>R$ <%=h.getPrecoDia()%></td>
						<td><%=h.getLocal().getCidade()%></td>
						<td><%=h.getLocal().getUf()%></td>
						<td class="d-flex justify-content-start align-items-center">
							<div>
								<!-- Button trigger modal -->
								<button class="btn" type="button" data-bs-toggle="modal"
									data-bs-target="#staticBackdrop<%=h.getId()%>">
									<i class="gg-pen"></i>
								</button>

								<!-- Modal -->
								<div class="modal fade" id="staticBackdrop<%=h.getId()%>"
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
											<form action="./hospedagem-update">
												<div class="modal-body">
													<label for="idUpdate" class="form-label">ID</label> <input
														type="text" class="form-control mb-3" id="idUpdate"
														name="idUpdate" value="<%=h.getId()%>" readonly /> <label
														for="nameUpdate" class="form-label">Nome da
														Hospedagem</label> <input type="text" class="form-control mb-3"
														id="nameUpdate" name="nameUpdate" value="<%=h.getNome()%>"
														required> <label for="cnpjUpdate"
														class="form-label">CNPJ</label> <input type="text"
														class="form-control" id="cnpjUpdate" name="cnpjUpdate"
														readonly value="<%=h.getCnpj()%>"> <label
														for="typeUpdate" class="form-label">Tipo de
														Hospedagem</label> <select class="form-select" id="typeUpdate"
														name="typeUpdate"required">
														<option selected>Escolha um tipo de hospedagem</option>
														<option value="Hostel">Hostel</option>
														<option value="Hotel">Hotel</option>
														<option value="Pousada">Pousada</option>
														<option value="Resort">Resort</option>
													</select> <label for="priceUpdate" class="form-label">Valor
														da diária</label> <input type="number" class="form-control"
														id="priceUpdate" name="priceUpdate" required
														value="<%=h.getPrecoDia()%>">
													<div class="form-group">
														<label for="idLocalUpdate" class="form-label">
															Cidade </label> <select id="idLocalUpdate" name="idLocalUpdate"
															class="form-select">
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
							</div> <a href="./hospedagem-delet?id=<%=h.getId()%>"
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