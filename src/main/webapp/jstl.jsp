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
        <h1>JSTL</h1>
        <section>
            <h2>Intro</h2>

            <%
                pageContext.setAttribute("greeting", "Hola mundo");
            %>

            <p>Saludo <c:out value="${greeting}"/></p>
        </section>

        <section>
            <h2>Query String (XSS)</h2>
            <p>Parámetro a:  <c:out value="${param.a}"/></p>
            <!--
            http://localhost:8080/Spike03c/jstl.jsp?a=%3Cscript%3Ealert(%27hola%27);%3C/script%3E
            -->
        </section>

        <section>
            <h2>c:if</h2>
            <jsp:useBean id="ahora" class="java.util.Date"/> 
            Ahora son las ${ahora.hours},<br/>
            <c:set var="hora" value="${ahora.hours}" /> 
            <b>
                <c:if test="${hora >= 0 && hora <=5}">
                    Durmiendo...
                </c:if>
                <c:if test="${hora >= 6 && hora <=11}">
                    ¡Buenos días!
                </c:if>
                <c:if test="${hora >= 12 && hora <=17}">
                    ¡Buenas tardes!
                </c:if>
                <c:if test="${hora >= 18 && hora <=23}">
                    ¡Buenas noches!
                </c:if>
            </b>           
        </section>

        <section>
            <h2>Propiedades</h2>

            <%
                List<String> nombreCollection = Arrays.asList("uno", "dos", "tres");
                request.setAttribute("lista", nombreCollection);
            %>
            <p>
                <c:forEach var="nombre" items="${lista}">
                    Nombre: ${nombre} <br>
                </c:forEach>
            </p>

        </section>

        <section>
            <h2>c:url</h2>
            <a href="<c:url value='pagar.jsp'><c:param name="x" value="3+2"></c:param></c:url>" >Pagar</a>
        </section>

    </body>
</html>
