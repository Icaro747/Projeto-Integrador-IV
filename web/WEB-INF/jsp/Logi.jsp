<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="<c:url value="resources/css/MainCss.css"/>">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@1,100&display=swap" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
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
                                    <input type="email" class="form__input" required="true">
                                    <label class="form__label">Email</label>
                                </div>
                                <div class="form__div">
                                    <input type="password" class="form__input" required="true">
                                    <label class="form__label">Senha</label>
                                </div>
                                <div class="button-cadastrar">
                                    <button type="submit" class="btn btn-destaque">Entrar</button>
                                </div>
                            </form>
                        </section>

                        <div class="divisorio"></div>

                        <section class="wWWhb">
                            <form action="" onsubmit="return Confirmacao()">
                                <h2 class="subtitulo-login">criar conta</h2>
                                <div class="form__div">
                                    <input type="email" class="form__input" required="true">
                                    <label class="form__label">Email</label>
                                </div>
                                <div class="form__div">
                                    <input type="password" class="form__input" required="true" id="Senha">
                                    <label class="form__label">Crie uma Senha</label>
                                </div>
                                <div class="form__div">
                                    <input type="password" class="form__input" required="true" id="ConSenha">
                                    <label class="form__label">Confirme a Senha</label>
                                </div>
                                <div class="form__div">
                                    <input type="text" class="form__input" required="true" id="CPF">
                                    <label class="form__label">CPF</label>
                                </div>
                                <div class="form__div">
                                    <input type="text" class="form__input" required="true" id="CEP">
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
        <script type="text/javascript">
            function Confirmacao(){
                var Senha = $("#Senha").val();
                var ConSenha = $("#ConSenha").val();
                if (Senha === ConSenha){
                    return true;
                }else{
                    alert("As senhas não estão iguais!");
                    return false;
                }
            }

            $(document).ready(function(){
                $("#CEP").mask("99999-999");
            });
            $(document).ready(function(){
                $("#CPF").mask("999.999.999-99");
            });
        </script>
    </body>
</html>
