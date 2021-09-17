<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt-BR">
    <head>
        <title>New Man</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.linearicons.com/free/1.0.0/icon-font.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,100&display=swap">
        <link rel="stylesheet" type="text/css" href="<c:url value="resources/css/MainCss.css"/>">
    </head>
    
    <body>
        
        <c:import url="header.jsp"/>
        
        <c:import url="Carousel.jsp"/>
        
        <div class="ConteinerProdutos">
            
            <c:forEach items="${lista}" var="Produto">
                <div class="ProdutoBox">
                    <div class="Deliniado">
                        <div class="ProdutoImg">
                            <a href="">
                                <img src="resources/img/roupa.jpg">
                            </a>
                        </div>
                        <div class="ProdutoTitolo">
                            <a href="">
                                <h2><strong>${Produto.nome}</strong></h2>
                            </a>
                        </div>
                        <div class="ProdutoPreso">
                            <div class="DivisoriaPreso">
                                <div class="PresoVista">
                                    <span>R$ ${Produto.v_venda}</span>
                                    <small> á vista</small>
                                </div>
                                <div class="PresoJuros">
                                    <span>3x</span>
                                    <small> de </small>
                                    <span>R$ ${Math.round((Produto.v_venda/3)* 100)/100}</span>
                                    <small> sem juros</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
            
        </div>
        
        
    </body>
    
</html>