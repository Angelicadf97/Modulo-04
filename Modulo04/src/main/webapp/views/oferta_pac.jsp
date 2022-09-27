<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pacotes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
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
        <main class="container conteudo my-4">
            <nav class="row text-center p-4 bg-light" style="border-radius: 20px;">
                <h5 class="col-4"><a href="./ofertas">VOOS</a></h5>
                <h5 class="col-4"><a href="./oferta_pac">PACOTES</a></h5>
                <h5 class="col-4"><a href="./oferta_hos">HOSPEDAGENS</a></h5>
            </nav>
            <!--FORMULÁRIO-->
            <section>
                <form>
                    <div class="row my-4">
                        <h5 class="col-sm-6 col-md-4 col-lg-3 mb-3">Qual seu destino?</h5>
                        <div class="col-sm-6 col-md-8 col-lg-6 mb-3">
                            <input type="text" class="form-control" id="inputCity">
                        </div>
                        <div class="col-sm-12 col-lg-3 d-grid mb-3">
                            <button type="submit" class="btn btn-primary">Buscar</button>
                        </div>
                    </div>
                </form>
            </section>
            <!--FORMULÁRIO-->
            <!--CARDS-->
            <section>
                <!--DESTINOS NACIONAIS-->
                <div>
                    <h4 id="fort">FORTALEZA</h4>
                    <ul class="promo">
                        <!--Card01-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/comfort-hotel-fortaleza-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Comfort Hotel Fortaleza</h5>
                                    <p>
                                        A partir de <strong>Sáb 01 Out</strong> Até <strong>Qui 06 Out</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.578</p>
                                    <p>R$<big><strong>1.691</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card01-->
                        <!--Card02-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/plaza-praia-suites-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Plaza Praia Suites Hotel</h5>
                                    <p>
                                        A partir de <strong>Sáb 24 Set</strong> Até <strong>Ter 04 Out</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.907</p>
                                    <p>R$<big><strong>2.143</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card02-->
                        <!--Card03-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/Hotel_Brasil_tropical-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Hotel Brasil Tropical</h5>
                                    <p>
                                        A partir de <strong>Seg 29 Ago</strong> Até <strong>Sex 02 Set</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.477</p>
                                    <p>R$<big><strong>1.908</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card03-->
                        <!--Card04-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/portal_praia_hotel-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Portal da Praia Hotel</h5>
                                    <p>
                                        A partir de <strong>Ter 20 Set</strong> Até <strong>Sáb 24 Set</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.590</p>
                                    <p>R$<big><strong>1.800</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card04-->
                        <!--Card05-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/maredomus-hotel-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Maredomus Hotel</h5>
                                    <p>
                                        A partir de <strong>Seg 29 Ago</strong> Até <strong>Ter 13 Ago</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$3.704</p>
                                    <p>R$<big><strong>2.734</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card05-->
                    </ul>
                </div>
                <div>
                    <h4 id="flor">FLORIANÓPOLIS</h4>
                    <ul class="promo">
                        <!--Card01-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/comfort-hotel-fortaleza-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Comfort Hotel Fortaleza</h5>
                                    <p>
                                        A partir de <strong>Sáb 01 Out</strong> Até <strong>Qui 06 Out</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.578</p>
                                    <p>R$<big><strong>1.691</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card01-->
                        <!--Card02-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/plaza-praia-suites-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Plaza Praia Suites Hotel</h5>
                                    <p>
                                        A partir de <strong>Sáb 24 Set</strong> Até <strong>Ter 04 Out</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.907</p>
                                    <p>R$<big><strong>2.143</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card02-->
                        <!--Card03-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/Hotel_Brasil_tropical-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Hotel Brasil Tropical</h5>
                                    <p>
                                        A partir de <strong>Seg 29 Ago</strong> Até <strong>Sex 02 Set</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.477</p>
                                    <p>R$<big><strong>1.908</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card03-->
                        <!--Card04-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/portal_praia_hotel-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Portal da Praia Hotel</h5>
                                    <p>
                                        A partir de <strong>Ter 20 Set</strong> Até <strong>Sáb 24 Set</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.590</p>
                                    <p>R$<big><strong>1.800</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card04-->
                        <!--Card05-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/maredomus-hotel-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Maredomus Hotel</h5>
                                    <p>
                                        A partir de <strong>Seg 29 Ago</strong> Até <strong>Ter 13 Ago</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$3.704</p>
                                    <p>R$<big><strong>2.734</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card05-->
                    </ul>
                </div>
                <div>
                    <h4 id="rec">RECIFE</h4>
                    <ul class="promo">
                        <!--Card01-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/comfort-hotel-fortaleza-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Comfort Hotel Fortaleza</h5>
                                    <p>
                                        A partir de <strong>Sáb 01 Out</strong> Até <strong>Qui 06 Out</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.578</p>
                                    <p>R$<big><strong>1.691</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card01-->
                        <!--Card02-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/plaza-praia-suites-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Plaza Praia Suites Hotel</h5>
                                    <p>
                                        A partir de <strong>Sáb 24 Set</strong> Até <strong>Ter 04 Out</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.907</p>
                                    <p>R$<big><strong>2.143</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card02-->
                        <!--Card03-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/Hotel_Brasil_tropical-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Hotel Brasil Tropical</h5>
                                    <p>
                                        A partir de <strong>Seg 29 Ago</strong> Até <strong>Sex 02 Set</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.477</p>
                                    <p>R$<big><strong>1.908</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card03-->
                        <!--Card04-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/portal_praia_hotel-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Portal da Praia Hotel</h5>
                                    <p>
                                        A partir de <strong>Ter 20 Set</strong> Até <strong>Sáb 24 Set</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.590</p>
                                    <p>R$<big><strong>1.800</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card04-->
                        <!--Card05-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/maredomus-hotel-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Maredomus Hotel</h5>
                                    <p>
                                        A partir de <strong>Seg 29 Ago</strong> Até <strong>Ter 13 Ago</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$3.704</p>
                                    <p>R$<big><strong>2.734</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card05-->
                    </ul>
                </div>
                <div>
                    <h4 id="rio">RIO DE JANEIRO</h4>
                    <ul class="promo">
                        <!--Card01-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/comfort-hotel-fortaleza-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Comfort Hotel Fortaleza</h5>
                                    <p>
                                        A partir de <strong>Sáb 01 Out</strong> Até <strong>Qui 06 Out</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.578</p>
                                    <p>R$<big><strong>1.691</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card01-->
                        <!--Card02-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/plaza-praia-suites-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Plaza Praia Suites Hotel</h5>
                                    <p>
                                        A partir de <strong>Sáb 24 Set</strong> Até <strong>Ter 04 Out</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.907</p>
                                    <p>R$<big><strong>2.143</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card02-->
                        <!--Card03-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/Hotel_Brasil_tropical-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Hotel Brasil Tropical</h5>
                                    <p>
                                        A partir de <strong>Seg 29 Ago</strong> Até <strong>Sex 02 Set</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.477</p>
                                    <p>R$<big><strong>1.908</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card03-->
                        <!--Card04-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/portal_praia_hotel-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Portal da Praia Hotel</h5>
                                    <p>
                                        A partir de <strong>Ter 20 Set</strong> Até <strong>Sáb 24 Set</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$2.590</p>
                                    <p>R$<big><strong>1.800</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card04-->
                        <!--Card05-->
                        <li class="me-5 mb-4">
                            <div class="card" style="width: 18rem;">
                                <img src="../IMG/fortaleza/maredomus-hotel-300x200.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Maredomus Hotel</h5>
                                    <p>
                                        A partir de <strong>Seg 29 Ago</strong> Até <strong>Ter 13 Ago</strong>
                                    </p>

                                    <p class="small">Preço por pessoa</p>
                                    <p class="small text-secondary text-decoration-line-through">R$3.704</p>
                                    <p>R$<big><strong>2.734</strong></big></p>
                                    <p class="small">Taxas e impostos não inclusos</p>
                                </div>
                        </li>
                        <!--Card05-->
                    </ul>
                </div>
                <!--DESTINOS NACIONAIS-->
            </section>
            <!--CARDS-->
        </main>
        <!--CONTEUDO-->

        <!--RODAPÉ-->
		<footer>
			<%@include file="../assents/components/footer.jsp"%>
		</footer>
		<!--RODAPÉ-->
    </div>
    <!--SCRIPT-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
</body>

</html>