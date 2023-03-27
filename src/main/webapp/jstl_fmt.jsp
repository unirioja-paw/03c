<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="es.unirioja.paw.model.Articulo"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <h1>JSTL: i18n y formateo</h1>
        <section>
            <h2>fmt</h2>
            <%
                pageContext.setAttribute("fechaCierre", Calendar.getInstance());
                pageContext.setAttribute("now", new Date());
                pageContext.setAttribute("importe", 3.5);
            %>
            <fmt:formatDate value="${fechaCierre.time}"/>
            <br>
            <fmt:formatDate value="${now}" type="date" dateStyle="short"/>
            <br>
            EUR: <fmt:formatNumber currencyCode="EUR" value="${importe}" type="currency" />
            , USD: <fmt:formatNumber currencyCode="USD" value="${importe}" type="currency"/>
            
            <br>
            <fmt:formatNumber value = "${importe}" type="currency"/>
            <br>

            <fmt:setLocale value = "en_US"/>
            <fmt:formatNumber value = "${importe}" type="currency"/>

        </section>

    </body>
</html>
