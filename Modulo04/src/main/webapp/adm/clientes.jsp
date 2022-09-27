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
			<table class="table">
				<h1>Clientes cadastrados</h1>
				<thead>
					<tr>
						<th>ID</th>
						<th>Nome</th>
						<th>CPF</th>
						<th>Data de Nascimento</th>
						<th>Telefone</th>
						<th>Logradouro</th>
						<th>Cidade</th>
						<th>UF</th>
						<th>Email</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<%
					for (Cliente c : clientes) {
					%>
					<tr>
						<td><%=c.getId()%></td>
						<td><%=c.getNome()%></td>
						<td><%=c.getCpf()%></td>
						<td><%=c.getNasc()%></td>
						<td><%=c.getTel()%></td>
						<td><%=c.getEnde()%></td>
						<td><%=c.getLocal().getCidade()%></td>
						<td><%=c.getLocal().getUf()%></td>
						<td><%=c.getEmail()%></td>
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
											<form action="./cliente-update">
												<div class="modal-body">
													<div class="mb-3">
														<label for="id" class="form-label">ID</label>
														<input type="text" class="form-control" id="id"
															name="id" value="<%=c.getId()%>">
													</div>
													<div class="mb-3">
														<label for="name" class="form-label">Nome Completo</label>
														<input type="text" class="form-control" id="name"
															name="name" value="<%=c.getNome()%>">
													</div>
													<div class="mb-3">
														<label for="cpf" class="form-label">CPF</label> <input
															type="text" class="form-control" id="cpf" name="cpf"
															placeholder="xxx.xxx.xxx-xx" value="<%=c.getCpf()%>">
													</div>
													<div class="mb-3">
														<label for="date" class="form-label">Data de
															nascimento</label> <input type="text" class="form-control"
															id="date" name="date" placeholder="dd/mm/aaaa"
															value="<%=c.getNasc() %>">
													</div>
													<div class="mb-3">
														<label for="tel" class="form-label">Telefone</label> <input
															type="tel" class="form-control" id="tel" name="tel"
															placeholder="(xx) xxxxx-xxxx" value="<%=c.getTel()%>">
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
															type="text" class="form-control" id="log" name="log" value="<%=c.getEnde()%>">
													</div>
													<div class="mb-3">
														<label for="email" class="form-label">Email</label> <input
															type="email" class="form-control" id="email" name="email" value="<%=c.getEmail()%>">
													</div>
													<div class="mb-3">
														<label for="senha" class="form-label">Senha</label> <input
															type="password" class="form-control" id="senha"
															name="senha" value="<%=c.getSenha()%>">
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
							</div> <a href="./cliente-delet?id=<%=c.getId()%>"
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