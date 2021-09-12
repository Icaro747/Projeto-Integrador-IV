<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,100&display=swap">
        <link rel="stylesheet" type="text/css" href="<c:url value="resources/css/owl.carousel.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="resources/css/owl.theme.default.min.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="resources/css/MainCss.css"/>">
    </head>
    
    <body>
        
        <c:import url="header.jsp"/>
        
        <h1 class="h1-nmarca">Nossas Marcas</h1>
        <div class="owl-carousel owl-theme">
            <div class="item">
                <img class="img-roupa" src="resources/img/roupa1.png">
                <h1 class="h1-nomeroupa">Camiseta</h1>
                <h1 class="h1-valor-roupa">R$ 50.00</h1>
                <div class="div-btn">
                    <button type="submit" class="adicionar-btn">Adicionar</button>
                </div>  
            </div>
            <div class="item">
                <img class="img-roupa" src="resources/img/roupa1.png">
                <h1 class="h1-nomeroupa">Camiseta</h1>
                <h1 class="h1-valor-roupa">R$ 50.00</h1>
                <div class="div-btn">
                    <button type="submit" class="adicionar-btn">Adicionar</button>
                </div>
            </div>
            <div class="item">
                <img class="img-roupa" src="resources/img/roupa1.png">
                <h1 class="h1-nomeroupa">Camiseta</h1>
                <h1 class="h1-valor-roupa">R$ 50.00</h1>
                <div class="div-btn">
                    <button type="submit" class="adicionar-btn">Adicionar</button>
                </div>
            </div>
        </div>
        <div class="conteiner">
            <div class="destaques">
              teste
            </div>
            <div class="destaques">
              teste
            </div>
            <div class="destaques">
              teste
            </div>
            <div class="destaques">
              teste
            </div>
            <div class="destaques">
              teste
            </div>
            <div class="destaques">
              teste
            </div>
        </div>
        
        <script src="resources/js/jQuery3.min.lib.js"></script>  
        <script src="resources/js/owl.carousel.min.js"></script> 
        <script src="resources/js/js.js"></script>
        
    </body>
    
</html>