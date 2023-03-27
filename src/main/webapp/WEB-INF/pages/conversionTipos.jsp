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
            <h2>Conversiones de tipos</h2>
            <div>
                Boolean: ${verdad}, ${verdad.toString()}
                <br>
                cadena: ${cadena}, ${verdad or cadena}
                <br>
                numero: ${numero}
                <br>
            </div>

            <div>
                <p>Te voy a hacer más viejo. Ahora tienes ${param.edad + 10} años.</p> 
                <c:forEach begin="0" var="i" end="${param.edad}">
                    ${i} Hola <br/>
                </c:forEach>
            </div>


        </section>

    </body>
</html>
