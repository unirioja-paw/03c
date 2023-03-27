<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
        <style>
            .box {
                border: solid 1px pink;
                padding: 10px;
                margin: 10px 0;
            }
            dl {
                border: solid 1px blue;
                padding: 4px;
            }
            dt {
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <h1>Noticias</h1>

        <div class="box">
            <c:forEach var="n" items="${noticias}">
                <dl> <dt>${n.autor}</dt> <dd>${n.texto}</dd> </dl>
            </c:forEach>
        </div>

        <!-- solo los dos primeros -->
        <div class="box">
            <c:forEach var="n" items="${noticias}" begin="0" end="1" >
                <dl> <dt>${n.autor}</dt> <dd>${n.texto}</dd> </dl>
            </c:forEach>
        </div>

        <!-- cadena de caracteres -->
        <div class="box">
            <c:forEach var="t" items="primero,segundo,tercero,cuarto" >
                <p> ${t} </p>
            </c:forEach>
        </div>

        <!-- varStatus -->
        <div class="box">
            <c:forEach var="n" items="${noticias}" begin="0" end="3" varStatus="st" >
                <dl> <dt>${st.count}: ${n.autor}</dt> <dd>${n.texto}</dd> </dl>
            </c:forEach>
        </div>

    </body>
</html>
