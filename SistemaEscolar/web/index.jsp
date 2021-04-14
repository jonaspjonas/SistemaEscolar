<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://kit.fontawesome.com/66ad9b4f46.js" crossorigin="anonymous"></script>
        <title>Home Nossa Escola</title>
    </head>
    <body>
        <!--Barra de navegação do topo do site-->
        <div class="w3-top">
            <div class="w3-bar w3-blue w3-padding w3-card">
                <a href="#home" class="w3-bar-item w3-button w3-hover-white">Nossa Escola</a>
                <!-- Deixando itens de navegação do lado direito e Escondendo em telas pequenas-->
                <div class="w3-right w3-hide-small">
                    <div class="w3-dropdown-hover">
                        <button class="w3-button w3-blue w3-hover-white">Começar</button>
                        <div class="w3-dropdown-content w3-bar-block w3-border">
                            <a href="loginaluno.jsp" class="w3-bar-item w3-button w3-hover-blue">Sou Aluno</a>
                            <a href="loginprofessor.jsp" class="w3-bar-item w3-button w3-hover-blue">Sou Professor</a>
                        </div>
                    </div>
                    <a href="#servicos" class="w3-bar-item w3-button w3-hover-white">Nossos Serviços</a>
                    <a href="#contato" class="w3-bar-item w3-button w3-hover-white">Contato</a>
                </div>
            </div>
        </div>

        <!--Cabeçalho-->
        <header class="w3-display-container w3-content w3-wide" id="home">
            <br><br>
            <img class="w3-image" src="img/principal.jpg"alt="Logotipo do curso" border="0">
            <br><br><br><br><br><br>
            <div class="w3-display-bottomleft w3-padding w3-blue">
                <h1 class="w3-xxlarge w3-blue">Nossa Escola: A sala de aula onde você estiver</h1>
            </div>
        </header>

        <!--Divisão da pagna-->
        <div class="w3-content">

        </div>
        <div class="w3-row w3-padding-64" id="sobre">
            <div class="w3-col m6 w3-padding-large w3-hide-small">
                <a><img src="img/principal2.jpg"
                        class="w3-round w3-image w3-opacity-min" style="width:80%" alt="Table Setting" border="0">
                </a>
            </div>
            <div class="w3-col m6 w3-padding-large w3-opacity w3-blue">
                <h1 class="w3-center">OBJETIVO</h1><br>
                <p class="w3-large">
                    O nosso sistema prima por transportar os alunos para um ambiente
                    agradavel e descontraído que ajudará no seu desenvolvimento intelectual
                    de forma prática.<br>
                    Dispomos de ferramentas que somadas ao conhecimento dos tutores irá acelerar
                    o desempenho dos alunos.

                </p>
            </div>
        </div>

        <!--Disciplinas-->
        <div class="w3-row w3-padding-64" id="servicos">
            <h1 class="w3-center w3-opacity w3-blue">Serviços</h1>
            <br>
            <div class="w3-col l6 w3-padding-large">
                <h4><b>Raciocínio</b></h4>
                <p class="w3-text-grey">
                    Matemática e Tecnologia
                    <br>Programação e Algorítimos
                    <br>Econômia I 
                    <br>Análise matemática
                    <br>Design Digital
                    <br>Lógica
                    <br>Fundamentos da 
                    <br>Técnicas de Programação
                    <br>
                </p>
                <br>
                <h4><b>Linguagens</b></h4>
                <p class="w3-text-grey">
                    Português e Linguistica
                    <br>Escrita 
                    <br>Recursos da Oração
                    <br>Técnicas de Oratória
                    <br>Linguagem Latina I 
                    <br>Linguagem Universal  
                    <br>Planejamento de Redação
                    <br>Desenvolvimento
                    <br>
                </p>
                <br>
                <h4><b>Saúde e Arte</b></h4>
                <p class="w3-text-grey">
                    Qualidade de Vida e Educação Artística 
                    <br>Alimentos Naturais
                    <br>Exercitando corpo e mente
                    <br>Agricultura
                    <br>História da Arte 
                    <br>Grandes Pensadores
                    <br>Mnual do ser humano
                    <br>Música e dança
                    <br>
                </p>
                <br>
            </div>
            <div class="w3-col l6 w3-padding-large">
                <img src="img/principal3.jpg"
                     class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:60%">

                <img src="img/principal4.jpg"
                     class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:60%">

                <img src="img/principal5.jpg"
                     class="w3-round w3-image w3-opacity-min" alt="Menu" style="width:60%">
            </div>
        </div>

        <!--Contato-->
        <div class="w3-container w3-padding-64" id="contato">
            <h1 class="w3-opacity w3-center w3-blue"> Contato</h1><br>
            <p>Para maiores informações sobre o sistema</p>
            <p class="w3-text-blue-grey w3-large"><b>Belém, Brasil</b></p>
            <p>Telefone: (91) 99999-9999 ou E-mail: nossaescola@email.com.br</p>
            <form>
                <p><input class="w3-input w3-padding-16" type="text" placeholder="Nome" ></p>
                <p><input class="w3-input w3-padding-16" type="text" placeholder="Assunto" ></p>
                <p><input class="w3-input w3-padding-16" type="text" placeholder="Mensagem" ></p>
                <p><button class="w3-button w3-blue w3-hover-green" type="submit">Enviar</button></p>
            </form>
        </div>

        <div>
            <footer class="w3-center w3-light-blue w3-padding-32">
                <a href="https://pt-br.facebook.com/" target="_blanc"><i class="fab fa-facebook fa-3x w3-hover-blue"></i></a>
                <a href="https://www.instagram.com/?hl=pt-br" target="_blanc"><i class="fab fa-instagram fa-3x w3-hover-blue"></i></a>
                <a href="https://www.snapchat.com/l/pt-br/" target="_blanc"><i class="fab fa-snapchat fa-3x w3-hover-blue"></i></a>
                <a href="https://twitter.com/login?lang=pt" target="_blanc"><i class="fab fa-twitter fa-3x w3-hover-blue"></i></a>
                <a href="https://br.linkedin.com/" target="_blanc"><i class="fab fa-linkedin fa-3x w3-hover-blue"></i></a><br>
                <b>Desenvolvido por Time Engenhearia de Software BSI 2021</b>

            </footer>
        </div>
    </body>
</html>