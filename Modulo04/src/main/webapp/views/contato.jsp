<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Contato</title>
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
        <main class="d-flex justify-content-center align-items-center form-box">
            <!--FORMULÁRIO-->
            <section class="contato my-5">
                <h2>ENTRE EM CONTATO</h2>
                <form>
                    <div class="mb-3">
                        <label for="inputName" class="form-label">Seu nome</label>
                        <input type="text" class="form-control" id="inputName">
                    </div><div class="mb-3">
                        <label for="inputEmail" class="form-label">Seu email</label>
                        <input type="email" class="form-control" id="inputEmail">
                    </div>
                    <div class="mb-3">
                        <label for="inputText" class="form-label">Assunto</label>
                        <input type="text" class="form-control" id="inputText">
                    </div>
                    <div class="mb-3">
                        <label for="exampleFormControlTextarea1" class="form-label">Mensagem</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
</body>
</html>