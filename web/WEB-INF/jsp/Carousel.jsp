<%-- 
    Document   : Carousel
    Created on : 14/09/2021, 23:46:09
    Author     : Icaro
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="<c:url value="resources/css/glide.core.min.css"/>">
        <link rel="stylesheet" href="<c:url value="resources/css/glide.theme.min.css"/>">
        <link rel="stylesheet" href="<c:url value="resources/css/carousel.css"/>">
    </head>

    <body>
        
        <h1 class="h1-nmarca">Nossas Linhas</h1>
        
        <nav class="glide">
            
            <div class="glide__track" data-glide-el="track">
                <ul class="glide__slides">
                    <li class="glide__slide">
                        <img class="img-linhas" src="resources/img/roupa1.png">
                    </li>
                    <li class="glide__slide">
                        <img class="img-linhas" src="resources/img/roupa.jpg">
                    </li>
                </ul>
            </div>
            
            <div class="glide__bullets" data-glide-el="controls[nav]">
                <button class="glide__bullet" data-glide-dir="=0"></button>
                <button class="glide__bullet" data-glide-dir="=1"></button>
                <button class="glide__bullet" data-glide-dir="=2"></button>
            </div>
            
            <div class="glide__arrows" data-glide-el="controls">
                <button class="glide__arrow glide__arrow--left" data-glide-dir="<">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
                    </svg>
                </button>
                <button class="glide__arrow glide__arrow--right" data-glide-dir=">">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
                    </svg>
                </button>
            </div>
            
        </nav>
        
        <script src="https://cdn.jsdelivr.net/npm/@glidejs/glide"></script>
        <script>
            const config = {
                type: "carousel",
                perView: 4,
                startAt: 0,
                autoplay: 4000
            };
            new Glide('.glide', config).mount();
        </script>
        
    </body>
</html>
