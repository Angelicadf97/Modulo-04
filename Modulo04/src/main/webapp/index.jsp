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
<link rel="stylesheet" href="./assents/css/style.css">
</head>
<body>
	<div class="main">
		<!--BARRA DE NAVEGA��O-->
		<header>
			<%@include file="./assents/components/navbar.jsp"%>
		</header>
		<!--BARRA DE NAVEGA��O-->

		<!--CONTEUDO-->
		<main class="container conteudo my-4 px-4">
			<!--FORMUL�RIO-->
			<section>
				<h2 class="pt-4">PACOTES</h2>
				<form>
					<div class="row">
						<div class="col-6 col-md-4 mb-2">
							<label for="inputCity" class="form-label">Origem</label> <input
								type="text" class="form-control" id="inputCity">
						</div>
						<div class="col-6 col-md-4 mb-2">
							<label for="inputCity" class="form-label">Destino</label> <input
								type="text" class="form-control" id="inputCity">
						</div>
						<div class="col-6 col-md-2 mb-2">
							<label for="inputDate" class="form-label">Ida</label> <input
								type="date" class="form-control" id="inputDate">
						</div>
						<div class="col-6 col-md-2 mb-2">
							<label for="inputDate" class="form-label">Volta</label> <input
								type="date" class="form-control" id="inputDate">
						</div>
					</div>
					<div class="row mb-4">
						<div class="col-6 col-md-4 mb-2">
							<label for="inputAdult" class="form-label">Adultos a
								partir de 18 anos</label> <input type="number" placeholder="0"
								class="form-control" id="inputAdult">
						</div>
						<div class="col-6 col-md-4 mb-2">
							<label for="inputChildren" class="form-label">Crian�as
								entre 2 e 17 anos</label> <input type="number" placeholder="0"
								class="form-control" id="inputChildren">
						</div>
						<div class="col-md-4 mb-2 d-grid mt-4">
							<button type="submit" class="btn btn-primary">Buscar</button>
						</div>
					</div>
				</form>
			</section>
			<!--FORMUL�RIO-->

			<!--CARROSSEL-->
			<section>
				<h4>PACOTES PROMOCIONAIS</h4>
				<div>
					<div id="carouselExampleCaptions" class="carousel slide bgred mb-3"
						data-bs-ride="false">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
							<button type="button" data-bs-target="#carouselExampleCaptions"
								data-bs-slide-to="3" aria-label="Slide 4"></button>
						</div>
						<div class="carousel-inner text-center">
							<div class="carousel-item active">
								<img src="./assents/img/fortaleza-400x1600.png" alt="...">
								<div class="carousel-caption d-md-block bg-opacity-50 bg-black">
									<h5 class="text-white">FORTALEZA-CE</h5>
									<p>Fortaleza � um dos destinos tur�sticos mais cobi�ados no
										Brasil e, depois de conhecer a variedade de atrativos que a
										cidade oferece, fica f�cil entender o porqu� desse sucesso.
										Com o poder de agradar pessoas de todas as idades, a capital
										cearense mistura muitas coisas de que o brasileiro gosta:
										belezas naturais, cultura, m�sica, divers�o e uma culin�ria de
										tirar o chap�u.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="./assents/img/florianopolis-400x1600.png" alt="...">
								<div class="carousel-caption d-md-block bg-opacity-50 bg-black">
									<h5 class="text-white">FLORIAN�POLIS-SC</h5>
									<p>Florian�polis encanta por sua variedade de praias e pela
										capacidade de agradar todo tipo de p�blico. � uma capital que
										cresceu em meio � natureza, que oferece belas paisagens
										naturais por toda sua extens�o, onde se pode curtir tanto o
										movimento de uma capital efervescente quanto a tranquilidade
										de uma cidade quase do interior.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="./assents/img/recife-400x1600.png" alt="...">
								<div class="carousel-caption d-md-block bg-opacity-50 bg-black">
									<h5 class="text-white">RECIFE-PE</h5>
									<p>O Recife � uma cidade que se destaca em in�meros
										aspectos no Brasil. Conhecida por sua influ�ncia holandesa, a
										"cidade dos arrecifes", que hoje � um dos centros urbanos mais
										desenvolvidos do pa�s, preserva muitos resqu�cios de seu
										per�odo colonial, garantindo que uma viagem pela cidade revele
										n�o apenas as belezas naturais da costa brasileira, como
										tamb�m sua faceta hist�rica.</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="./assents/img/rio_de_janeiro-400x1600.png" alt="...">
								<div class="carousel-caption d-md-block bg-opacity-50 bg-black">
									<h5 class="text-white">RIO DE JANEIRO-RJ</h5>
									<p>O Rio de Janeiro, � a cidade brasileira mais conhecida
										no exterior tem a fama de possuir um povo alegre, �vido por
										sol, praia, futebol e samba. Mas o Rio vai muito al�m disso:
										tem hist�ria. Tornar-se sede da col�nia, abrigo da corte
										portuguesa e depois capital do Brasil foi fundamental para que
										n�o apenas a pr�pria cidade como o pa�s todo se desenvolvesse
										em diversos aspectos.</p>
								</div>
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>
			</section>
			<!--CARROSSEL-->

			<!--CARDS-->
			<section>
				<!--DESTINOS NACIONAIS-->
				<div>
					<h4>DESTINOS NACIONAIS</h4>
					<ul class="promo">
						<!--Card01-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/curitiba-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Curitiba</h5>
									<p class="card-text">Curitiba � conhecida pelo cuidado com
										o planejamento urbano, belas �reas verdes e um transporte
										p�blico de qualidade.</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./assents/img/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./assents/img/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card01-->
						<!--Card02-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/foz_do_iguacu-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Foz do Igua��</h5>
									<p class="card-text">Foz do Igua�u � uma cidade cheia de
										atra��es e guarda um dos mais belos espet�culos da natureza,
										as Cataratas do Igua�u.</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./assents/img/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./assents/imgassents/img/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card02-->
						<!--Card03-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/jalapao-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Jalap�o</h5>
									<p class="card-text">Lorem ipsum, dolor sit amet
										consectetur adipisicing elit. Ipsa at provident aperiam,
										quisquam ullam recusandae?</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./assents/img/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./assents/img/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card03-->
						<!--Card04-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/maceio-300x200.png" class="card-img-top"
									alt="...">
								<div class="card-body">
									<h5 class="card-title">Macei�</h5>
									<p class="card-text">Lorem ipsum, dolor sit amet
										consectetur adipisicing elit. Ipsa at provident aperiam,
										quisquam ullam recusandae?</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./assents/img/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./assents/img/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card04-->
						<!--Card05-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/ouro_preto-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Outro Preto</h5>
									<p class="card-text">Lorem ipsum, dolor sit amet
										consectetur adipisicing elit. Ipsa at provident aperiam,
										quisquam ullam recusandae?</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./assents/img/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img
																src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./assents/img/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./assents/img/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./assents/img/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card05-->
					</ul>
				</div>
				<!--DESTINOS NACIONAIS-->

				<!--DESTINOS INTERNACIONAIS-->
				<div>
					<h4 class="mt-4">DESTINOS INTERNACIONAIS</h4>
					<ul class="promo">
						<!--Card01-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/curitiba-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Buenos Aires</h5>
									<p class="card-text">Lorem ipsum, dolor sit amet
										consectetur adipisicing elit. Ipsa at provident aperiam,
										quisquam ullam recusandae?</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./Site/IMG/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card01-->
						<!--Card02-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/curitiba-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Orlando</h5>
									<p class="card-text">Lorem ipsum, dolor sit amet
										consectetur adipisicing elit. Ipsa at provident aperiam,
										quisquam ullam recusandae?</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./Site/IMG/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card02-->
						<!--Card03-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/curitiba-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Braga</h5>
									<p class="card-text">Lorem ipsum, dolor sit amet
										consectetur adipisicing elit. Ipsa at provident aperiam,
										quisquam ullam recusandae?</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./Site/IMG/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card03-->
						<!--Card04-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/curitiba-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Bangkok</h5>
									<p class="card-text">Lorem ipsum, dolor sit amet
										consectetur adipisicing elit. Ipsa at provident aperiam,
										quisquam ullam recusandae?</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./Site/IMG/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card04-->
						<!--Card05-->
						<li class="me-5 mb-4">
							<div class="card" style="width: 18rem;">
								<img src="./assents/img/curitiba-300x200.png"
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Lisboa</h5>
									<p class="card-text">Lorem ipsum, dolor sit amet
										consectetur adipisicing elit. Ipsa at provident aperiam,
										quisquam ullam recusandae?</p>
									<div class="d-flex justify-content-between">
										<!--OFERTAS-->
										<div>
											<button class="btn btn-primary" type="button"
												data-bs-toggle="offcanvas"
												data-bs-target="#offcanvasWithBothOptions"
												aria-controls="offcanvasWithBothOptions">Pacotes</button>

											<div class="offcanvas offcanvas-start" data-bs-scroll="true"
												tabindex="-1" id="offcanvasWithBothOptions"
												aria-labelledby="offcanvasWithBothOptionsLabel">
												<div class="offcanvas-header">
													<h5 class="offcanvas-title"
														id="offcanvasWithBothOptionsLabel">CURITIBA</h5>
													<button type="button" class="btn-close"
														data-bs-dismiss="offcanvas" aria-label="Close"></button>
												</div>
												<div class="offcanvas-body">
													<!--Pacotes-->
													<div>
														<!--Pac01-->
														<div class="card mb-3">
															<img
																src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac01-->
														<!--Pac02-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac02-->
														<!--Pac03-->
														<div class="card mb-3">
															<img src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																class="card-img-top" alt="...">
															<div class="card-body">
																<h5 class="card-title">Nacional Inn Curitiba Torres</h5>
																<p class="card-text">
																	A partir de <strong>Qua 17 Ago</strong> At� <strong>
																		Sex 19 Ago</strong>
																</p>
																<p class="card-text">
																	<small class="text-muted">Voo direto BSB - CWB</small>
																</p>
																<p class="card-text">
																	<small class="text-muted">Pre�o por pessoa</small>
																</p>
																<p class="card-text">
																	<small>R$</small><big>767</big>
																</p>
																<p class="card-text">
																	<small class="text-muted">Taxas e impostos n�o
																		inclusos</small>
																</p>
															</div>
														</div>
														<!--Pac03-->
													</div>
													<!--Pacotes-->
												</div>
											</div>
										</div>
										<!--OFERTAS-->
										<!--MODAL-->
										<div>
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												Saiba mais</button>

											<!-- Modal -->
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">CURITIBA
															</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">
															<!--CARROSSEL-->
															<div id="carouselExampleDark"
																class="carousel carousel-dark slide"
																data-bs-ride="carousel">
																<div class="carousel-indicators">
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="0" class="active"
																		aria-current="true" aria-label="Slide 1"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="1" aria-label="Slide 2"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="2" aria-label="Slide 3"></button>
																	<button type="button"
																		data-bs-target="#carouselExampleDark"
																		data-bs-slide-to="3" aria-label="Slide 4"></button>
																</div>
																<div class="carousel-inner text-center">
																	<div class="carousel-item active"
																		data-bs-interval="10000">
																		<img
																			src="./Site/IMG/curitiba/centro-historico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Centro Hist�rico</h5>
																		</div>
																	</div>
																	<div class="carousel-item" data-bs-interval="2000">
																		<img
																			src="./Site/IMG/curitiba/jardim-botanico-de-curitiba.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Jardim Bot�nico</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img src="./Site/IMG/curitiba/memorial-ucraniano.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Memorial Ucraniano</h5>
																		</div>
																	</div>
																	<div class="carousel-item">
																		<img
																			src="./Site/IMG/curitiba/museu-oscar-niemeyer.jpg"
																			alt="...">
																		<div
																			class="carousel-caption d-md-block bg-black bg-opacity-50">
																			<h5 class="text-white">Museu Oscar Niemeyer</h5>
																		</div>
																	</div>
																</div>
																<button class="carousel-control-prev" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="prev">
																	<span class="carousel-control-prev-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Previous</span>
																</button>
																<button class="carousel-control-next" type="button"
																	data-bs-target="#carouselExampleDark"
																	data-bs-slide="next">
																	<span class="carousel-control-next-icon"
																		aria-hidden="true"></span> <span
																		class="visually-hidden">Next</span>
																</button>
															</div>
															<!--CARROSSEL-->
															<div>
																<p class="mt-4">O dia a dia de Curitiba reflete a
																	mistura de imigrantes com que a cidade foi formada.
																	Esse � s� um dos motivos pelo qual ela recebe bem os
																	forasteiros. A cultura curitibana � um mix de
																	ucranianos, poloneses, alem�es e italianos. Tudo com
																	uma boa pitada dos tropeiros que passavam pela regi�o
																	quando Curitiba ainda era a Vila de Nossa Senhora da
																	Luz dos Pinhais. Fundada em 1693, a capital paranaense
																	se mant�m aberta a novas culturas e est� sempre de
																	bra�os abertos para o mundo. Os curitibanos se enchem
																	de orgulho por viverem em um dos melhores destinos do
																	pa�s e adoram dividir essa experi�ncia com quem deseja
																	curtir alguns dias na cidade.</p>
															</div>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary">Comprar
																pacotes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!--MODAL-->
									</div>
								</div>
						</li>
						<!--Card05-->
					</ul>
				</div>
				<!--DESTINOS INTERNACIONAIS-->
			</section>
			<!--CARDS-->
		</main>
		<!--CONTEUDO-->

		<!--RODAP�-->
		<footer>
			<%@include file="./assents/components/footer.jsp"%>
		</footer>
		<!--RODAP�-->
	</div>
	<!--SCRIPT-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
</body>
</html>