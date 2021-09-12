<%-- 
    Document   : Logi
    Created on : 12/09/2021, 19:14:32
    Author     : Icaro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/MainCss.css">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,100&display=swap" rel="stylesheet">
        <title>Login</title>
    </head>

    <body>
        
        <c:import url="header.jsp"/>
        
        <div class="hRtCnc">
            <div class="doTtzZ">
                <div class="cAQjTg">
                    <div class="gAgEMf">
                        <section class="wWWhb">
                            <form action="">
                                <h2 class="subtitulo-login">Login</h2>
                                <div class="form__div">
                                    <input type="email" class="form__input" placeholder=" ">
                                    <label class="form__label">Email</label>
                                </div>
                                <div class="form__div">
                                    <input type="password" class="form__input" placeholder=" ">
                                    <label class="form__label">Senha</label>
                                </div>
                                <div class="button-cadastrar">
                                    <button type="submit" class="btn btn-destaque">Entrar</button>
                                </div>
                            </form>
                        </section>

                        <div class="divisorio"></div>

                        <section class="wWWhb">
                            <form action="">
                                <h2 class="subtitulo-login">criar conta</h2>
                                <div class="form__div">
                                    <input type="email" class="form__input" placeholder=" ">
                                    <label class="form__label">Email</label>
                                </div>
                                <div class="form__div">
                                    <input type="password" class="form__input" placeholder=" ">
                                    <label class="form__label">Crie uma Senha</label>
                                </div>
                                <div class="form__div">
                                    <input type="password" class="form__input" placeholder=" ">
                                    <label class="form__label">Confirme a Senha</label>
                                </div>
                                <div class="form__div">
                                    <input type="text" class="form__input" placeholder=" ">
                                    <label class="form__label">CPF ou CNPJ</label>
                                </div>
                                <div class="form__div">
                                    <input type="text" class="form__input" placeholder=" ">
                                    <label class="form__label">CEP</label>
                                </div>
                                <div class="button-cadastrar">
                                    <button type="submit" class="btn btn-simples">Cadastra</button>
                                </div>
                            </form>
                        </section>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jQuery3.min.lib.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/js.js"></script>
    </body>
</html>
