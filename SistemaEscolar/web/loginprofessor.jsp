<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login Professor</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
            <form action="Validar" method="POST">
                <h2>Login</h2>
                <p><h3>Acesso do Professor</h3></p>
                <div style="color: red" class="erroDiv"> 
                    ${msgErro != null ? msgErro : ''} 

                </div> 
                <div class="form-group">
                    <input type="email" class="form-control" name="txtemail" placeholder="Email" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="txtsenha" placeholder="Senha" required="required">
                </div>       
                <div class="form-group">
                    <label class="form-check-label"><input type="checkbox"> Lembrar Senha</label>
                </div>
                <div class="form-group">
                    <button name="acao" value="Entrar" class="btn btn-primary btn-lg">Entrar</button>
                </div>
            </form>
            <div class="hint-text">N??o tem Cadastro? <a href="cadastroprofessor.jsp"/>Crie sua conta</a></div>
        </div>
    </body>
</html>