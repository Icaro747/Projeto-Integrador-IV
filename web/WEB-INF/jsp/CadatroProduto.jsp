<%-- 
    Document   : testCadatro
    Created on : 16/09/2021, 19:32:04
    Author     : Icaro
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="cadatro" method="POST">
            Nome
            <input type="text" name="nome" id="Nome"><br>
            Marca
            <input type="text" name="marca"><br>
            Tamanho
            <input type="text" name="tamanho"><br>
            Descricao
            <input type="text" name="descricao"><br>
            Tag
            <input type="text" name="tag"><br>
            Quantidade
            <input type="text" name="quantidade"><br>
            V_compra
            <input type="text" name="v_compra"><br>
            V_venda
            <input type="text" name="v_venda"><br>
            Statu
            <input type="text" name="status"><br>
            <button type="submit">Cadastrar</button>
        </form>
    </body>
</html>
