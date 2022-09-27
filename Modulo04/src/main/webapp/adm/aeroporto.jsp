<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"
	import="model.Aeroporto" import="model.Local" import="java.util.List"%>

<%
@SuppressWarnings("unchecked")
List<Aeroporto> aeroportos = (List<Aeroporto>) request.getAttribute("aeroportos");

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
			<h1 class="mb-4">Aeroportos</h1>
			<form class="my-4" action="./aeroporto-save">
				<h3>Cadastro de aeroporto</h3>
				<div class="row mb-3">
					<div class="col">
						<label for="name" class="form-label">Nome do Aeroporto</label> <input
							type="text" class="form-control" id="name" name="name" required>
					</div>
					<div class="col">
						<label for="cnpj" class="form-label">CNPJ</label> <input
							type="text" class="form-control" id="cnpj" name="cnpj" required
							placeholder="00.000.000/0000-00">
					</div>
					<div class="form-group col">
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
				</div>
				<div class="mt-4">
					<input type="submit" value="Cadastrar"
						class="btn btn-primary">
				</div>
			</form>
			<table class="table">
				<h3>Aeroportos cadastrados</h3>
				<thead>
					<tr>
						<th>ID</th>
						<th>CNPJ</th>
						<th>Nome</th>
						<th>Cidade</th>
						<th>Uf</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Aeroporto a : aeroportos) {
					%>
					<tr>
						<td><%=a.getId()%></td>
						<td><%=a.getCnpj()%></td>
						<td><%=a.getNome()%></td>
						<td><%=a.getLocal().getCidade()%></td>
						<td><%=a.getLocal().getUf()%></td>
						<td class="d-flex justify-content-start align-items-center">
							<div>
								<!-- Button trigger modal -->
								<button class="btn" type="button" data-bs-toggle="modal"
									data-bs-target="#staticBackdrop<%=a.getId()%>">
									<i class="gg-pen"></i>
								</button>

								<!-- Modal -->
								<div class="modal fade" id="staticBackdrop<%=a.getId()%>"
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
											<form action="./aeroporto-update">
												<div class="modal-body">
													<label for="idUpdate" class="form-label">ID</label> <input
														type="text" class="form-control mb-3" id="idUpdate"
														name="idUpdate" value="<%=a.getId()%>" readonly /> <label
														for="nameUpdate" class="form-label">Nome do Aeroporto</label> <input type="text" class="form-control mb-3"
														id="nameUpdate" name="nameUpdate" value="<%=a.getNome()%>"
														required> <label for="cnpjUpdate"
														class="form-label">CNPJ</label> <input type="text"
														class="form-control" id="cnpjUpdate" name="cnpjUpdate"
														readonly value="<%=a.getCnpj()%>">
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
							</div> <a href="./aeroporto-delet?id=<%=a.getId()%>"
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