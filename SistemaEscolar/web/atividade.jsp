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
        <title>Atividade</title>
    </head>
    <body>
        <br><br>
        <div class="w3-container w3-blue">
            <h2>Nova Atividade</h2>
        </div>

        <form class="w3-container" style="width: 75%" action="Validar" method="POST">
            <label class="w3-text-blue"><b>Título</b></label>
            <input class="w3-input w3-border w3-light-grey" name="txttitulo" required type="text">

            <label class="w3-text-blue"><b>Autor</b></label>
            <input class="w3-input w3-border w3-light-grey" name="txtautor" required type="text">

            <label class="w3-text-blue"><b>Descrição</b></label>
            <input class="w3-input w3-border w3-light-grey" name="txtdescricao" required type="text">
            <br>
            <div class="w3-container w3-center">
                <label class="w3-blue">Data Início:</label><input type="text" name="txtdataini" required>
                <label class="w3-red">Data Fim:</label><input type="text" name="txtdatafim" required>
            </div><br>

            <div class="w3-container w3-blue">
                <h3>Comando</h3>
            </div><br>

            <textarea class="msg" cols="100" rows="8" name="txtcomando" required></textarea><br>
            <input type="file" id="myFile" name="filename">
            <input type="submit">


            <div class="w3-section">
                <button name="acao" value="cadastrar" class="w3-btn w3-green">Cadastrar</button>
                <a href="dashboardprofessor.jsp" class="w3-btn w3-red">Cancelar</a>
            </div>
        </form>

    </body>
</html>
