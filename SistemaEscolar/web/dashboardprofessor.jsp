<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://kit.fontawesome.com/66ad9b4f46.js" crossorigin="anonymous"></script>
        <title>Dashboard Professor</title>
    </head>
    <body>
        <div class="w3-top">
            <div class="w3-bar w3-blue w3-padding w3-card">
                <a href="#dashboardprofessor" class="w3-bar-item w3-button w3-hover-white">Dashboard</a>
                <!-- Deixando itens de navegação do lado direito e Escondendo em telas pequenas-->
                <div class="w3-right w3-hide-small">
                    <div class="w3-dropdown-hover">
                        <button class="w3-button w3-blue w3-hover-white">Atividades</button>
                        <div class="w3-dropdown-content w3-bar-block w3-border">
                            <a href="loginaluno.jsp" class="w3-bar-item w3-button w3-hover-blue">Criar</a>
                            <a href="loginprofessor.jsp" class="w3-bar-item w3-button w3-hover-blue">Consultar</a>
                        </div>
                    </div>
                    <a href="#servicos" class="w3-bar-item w3-button w3-hover-white">Minhas Turmas</a>
                    <div class="w3-dropdown-hover">
                        <a class="w3-button w3-hover-white">${professor.getNome()}</a>
                        <div class="w3-dropdown-content w3-bar-block w3-border">
                            <a class="w3-bar-item" href="#">
                                <img src="img/prof.png" alt="60" width="60"/>
                            </a>
                            <a class="w3-bar-item" href="#">${professor.getEmail()}</a>
                            <a class="w3-bar-item w3-button w3-hover-white" href="#">Editar</a>
                            <form action="Validar" method="POST">
                                <button name="acao" value="Sair" class="dropdown-item" href="#">Sair</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

