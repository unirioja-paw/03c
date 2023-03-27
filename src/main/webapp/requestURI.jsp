<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="es.unirioja.paw.model.Articulo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>

    </head>
    <body>
        <h1>Expression Language (EL)</h1>

        <section>
            <h2>Objetos implícitos</h2>
            <h2>Datos recibidos de ${pageContext.request.requestURI}</h2>
            <form method="post">
                <table border="1">
                    <tr><th>nombre</th><th>edad</th><th>&nbsp</th></tr>
                    <tr>
                        <td>${param.nombre}</td>
                        <td>${param['edad']}</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="nombre"></td>
                        <td><input type="text" name="edad"></td>
                        <td><input type="submit"></td>
                    <tr>
                </table>
            </form>


        </section>

    </body>
</html>
