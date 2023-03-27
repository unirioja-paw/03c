<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>Hello</h1>

        <h2>Persona</h2>
        <p>Nombre: ${persona.nombre}</p>
        <p>Sexo: ${persona.sexo eq 'H' ? 'Hombre' : 'Mujer'}</p>    
        <p>Deportes: 
        <ul>
            <c:forEach var="d" items="${persona.deportes}">
                <li>${d}</li>
            </c:forEach>
        </ul>
    </p>


    <hr>
    <jsp:useBean id="persona" scope="request" class="es.unirioja.paw.model.Persona"/>
    <p>useBean: <%= persona.getNombre()%></p>


</body>
</html>
