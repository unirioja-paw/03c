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
            <h2>Intro</h2>
            <%
                pageContext.setAttribute("greeting", "Hola mundo");
            %>

            <p>Saludo ${greeting}</p>


            <p>greeting == null? ${greeting == null}</p>
            <p>greeting is empty? ${empty greeting}</p>
            <p>
                Suma ${2+1}
            </p>
        </section>

        <section>
            <h2>Query String (XSS)</h2>
            <p>Parámetro a: ${param.a}</p>
            <!--
            http://localhost:8080/Spike03c/el.jsp?a=%3Cscript%3Ealert(%27hola%27);%3C/script%3E
            -->
        </section>



        <section>
            <h2>Propiedades</h2>
            <%
                Articulo a = new Articulo();
                a.setNombre("Lavadora Acme");
                request.setAttribute("articulo", a);
            %>
            <p>
                Nombre del artículo (notación punto): ${articulo.nombre} 
            </p>
            <p>
                Nombre del artículo (array asociativo): ${articulo["nombre"]} 
            </p>
            <%
                List<String> nombreCollection = Arrays.asList("uno", "dos", "tres");
                request.setAttribute("lista", nombreCollection);
            %>
            <p>
                Lista: ${lista[0]}, ${lista[1]}, ${lista[2]}
            </p>


        </section>

        <section>
            <h2>Objetos implícitos</h2>
            <p>
                Código articulo (query string): ${param.cart}
            </p>
            <p>
                header 'host': ${header.host}
                <br>
                header 'header.user-agent': ${header.user-agent}
                <br>
                header 'header["user-agent"]': ${header["user-agent"]}.
            </p>


        </section>

    </body>
</html>
