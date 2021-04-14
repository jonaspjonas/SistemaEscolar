<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
        <title>Cadastro Professor</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> 
        <style>
            body {
                color: #fff;
                background: #3598dc;
                font-family: 'Roboto', sans-serif;
            }
            .form-control {
                height: 41px;
                background: #f2f2f2;
                box-shadow: none !important;
                border: none;
            }
            .form-control:focus {
                background: #e2e2e2;
            }
            .form-control, .btn {        
                border-radius: 3px;
            }
            .signup-form {
                width: 400px;
                margin: 30px auto;
            }
            .signup-form form {
                color: #999;
                border-radius: 3px;
                margin-bottom: 15px;
                background: #fff;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .signup-form h2  {
                color: #333;
                font-weight: bold;
                margin-top: 0;
            }
            .signup-form hr  {
                margin: 0 -30px 20px;
            }    
            .signup-form .form-group {
                margin-bottom: 20px;
            }
            .signup-form input[type="checkbox"] {
                margin-top: 3px;
            }
            .signup-form .row div:first-child {
                padding-right: 10px;
            }
            .signup-form .row div:last-child {
                padding-left: 10px;
            }
            .signup-form .btn {        
                font-size: 16px;
                font-weight: bold;
                background: #3598dc;
                border: none;
                min-width: 140px;
            }
            .signup-form .btn:hover, .signup-form .btn:focus {
                background: #2389cd !important;
                outline: none;
            }
            .signup-form a {
                color: #fff;
                text-decoration: underline;
            }
            .signup-form a:hover {
                text-decoration: none;
            }
            .signup-form form a {
                color: #3598dc;
                text-decoration: none;
            }	
            .signup-form form a:hover {
                text-decoration: underline;
            }
            .signup-form .hint-text  {
                padding-bottom: 15px;
                text-align: center;
            }
        </style>

    </head>
    <body>
        <div class="signup-form">

            <c:if test="${not empty errors}">
                <div class="alert alert-danger" role="alert">
                    <c:forEach var="error" items="${errors}">
                        ${error.message}<br />
                    </c:forEach>
                </div>
            </c:if>

            <form action="Controlador" method="POST">
                <h2>Cadastro Professor</h2>
                <p>Preencha os dados abaixo para criar sua conta!</p>
               
                <div class="form-group">
                    <input type="text" class="form-control" name="txtnome" minlength="5" maxlength="30" placeholder="Nome" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="txtemail" placeholder="Email" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="txttelefone" placeholder="Telefone" required="required">
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="txtdisciplina" placeholder="Disciplina" required="required">
                </div>
                <div class="form-group">
                    <input id="senha1" type="password" class="form-control" name="txtsenha" minlength="6" maxlength="12" placeholder="Senha" required="required">
                </div>
                <div class="form-group">
                    <input id="senha2" type="password" class="form-control" name="confirme_senha" minlength="6" maxlength="12" placeholder="Confirme sua senha" required="required" oninput="validaSenha(this)">
                </div>        
                <div class="form-group">
                    <label class="form-check-label"><input type="checkbox" required="required"> Aceito os <a href="#">Termos de Uso</a> E <a href="#">Política de Privacidade</a></label>
                </div>
                <div class="form-group">
                    <input type="submit" value="Cadastrar" class="btn btn-primary btn-lg">
                </div>
            </form>
            <div class="hint-text">Se já possui conta <a href="loginprofessor.jsp">Faça Login</a></div>
        </div>
    </body>
</html>

<script>
    function validaSenha(input) {
        if (input.value != document.getElementById('senha1').value) {
            input.setCustomValidity('Repita a senha corretamente');
        } else {
            input.setCustomValidity('');
        }
    }
</script>