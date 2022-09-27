<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"
	import="model.Local" import="java.util.List"%>
<%
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
			<h1 class="mb-4">Cidades/Destinos</h1>
			<form class="mb-4" action="./local-save">
				<h3>Cadastro de cidades</h3>
				<div class="row mb-4">
					<div class="col">
						<label for="city" class="form-label">Cidade</label> <input
							type="text" class="form-control" id="city" name="city" required />
					</div>
					<div class="col">
						<label for="uf" class="form-label">Estado</label> <select
							class="form-select" id="uf" name="uf" required>
							<option selected>Escolha um estado</option>
							<option value="AC">Acre</option>
							<option value="AL">Alagoas</option>
							<option value="AP">Amapá</option>
							<option value="AM">Amazonas</option>
							<option value="BA">Bahia</option>
							<option value="CE">Ceará</option>
							<option value="DF">Distrito Federal</option>
							<option value="ES">Espírito Santo</option>
							<option value="GO">Goiás</option>
							<option value="MA">Maranhão</option>
							<option value="MT">Mato Grosso</option>
							<option value="MS">Mato Grosso do Sul</option>
							<option value="MG">Minas Gerais</option>
							<option value="PA">Pará</option>
							<option value="PB">Paraíba</option>
							<option value="PR">Paraná</option>
							<option value="PE">Pernambuco</option>
							<option value="PI">Piauí</option>
							<option value="RJ">Rio de Janeiro</option>
							<option value="RS">Rio Grande do Sul</option>
							<option value="RO">Rondônia</option>
							<option value="RN">Rio Grande do Norte</option>
							<option value="RR">Roraima</option>
							<option value="SC">Santa Catarina</option>
							<option value="SE">Sergipe</option>
							<option value="SP">São Paulo</option>
							<option value="TP">Tocantins</option>
						</select>
					</div>
				</div>

				<div>
					<input type="submit" value="Cadastrar"
						class="btn btn-primary">
				</div>
			</form>
			<table class="table">
				<h3>Cidades cadastrados</h3>
				<thead>
					<tr>
						<th>ID</th>
						<th>Cidade</th>
						<th>UF</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Local l : locais) {
					%>
					<tr>
						<td><%=l.getId()%></td>
						<td><%=l.getCidade()%></td>
						<td><%=l.getUf()%></td>
						<td class="d-flex justify-content-start align-items-center">
							<div>
								<!-- Button trigger modal -->
								<button class="btn" type="button" data-bs-toggle="modal"
									data-bs-target="#staticBackdrop<%=l.getId()%>">
									<i class="gg-pen"></i>
								</button>

								<!-- Modal -->
								<div class="modal fade" id="staticBackdrop<%=l.getId()%>"
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
											<form action="./local-update">
												<div class="modal-body">
													<label for="idupdate" class="form-label">ID</label> <input
														type="text" class="form-control mb-3" id="idupdate"
														name="idupdate" value="<%=l.getId()%>" readonly />
													<label for="cityupdate" class="form-label">Cidade</label> <input
														type="text" class="form-control mb-3" id="cityupdate"
														name="cityupdate" value="<%=l.getCidade()%>" required />
													<label for="ufupdate" class="form-label">UF</label> <input
														type="text" class="form-control" id="ufupdate"
														name="ufupdate" value=<%=l.getUf()%> required />
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
							</div> <a href="./local-delet?id=<%=l.getId()%>"
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