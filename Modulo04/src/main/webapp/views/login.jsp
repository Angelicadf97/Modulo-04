<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <title>Login</title>
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
            <section class="login">
                <h2>LOGIN</h2>
                <form>
                    <div class="mb-3">
                        <label for="inputEmail" class="form-label">Email</label>
                        <input type="email" class="form-control" id="inputEmail">
                    </div>
                    <div class="mb-3">
                        <label for="inputSenha" class="form-label">Senha</label>
                        <input type="password" class="form-control" id="inputSenha">
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                        <label class="form-check-label" for="flexCheckChecked">
                          Manter conectado
                        </label>
                      </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Conectar</button>
                    </div>
                    <div class="d-flex justify-content-around mt-3">
                        <a href="../HTML/cadastro.html" class="text-black">Cadastrar conta</a>
                        <a href="#" class="text-black">Esqueci minha senha</a>
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