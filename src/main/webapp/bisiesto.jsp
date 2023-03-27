<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
        <%
            int year = 2023;
            String months[] = {"Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"};
            int days[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        %>
        <h1>Días por mes (versión simplificada)</h1>
        <section>
            <h2>Días año <%=year%> (Scriptlets)</h2>
            <%
                for (int m = 0; m < months.length; m++) {
            %>
            <%= months[m]%> tiene 
            <%
                if (m == 1 && year % 4 == 0) {
            %>
            29
            <%  } else {
            %>
            <%= days[m]%>
            <%
                }  // del if
            %>
            días<br>
            <%
                } // del for
            %>
        </section>
        <section>
            <%
                pageContext.setAttribute("year", year);
                pageContext.setAttribute("monthCollection", months);
                pageContext.setAttribute("days", days);
            %>

            <h2>Días año ${year} (EL)</h2>

            <c:forEach var="m" items="${monthCollection}" varStatus="i">
                ${m} tiene ${(i.index==1 && year%4 == 0) ? 29 : days[i.index]} días<br>
            </c:forEach>


        </section>

    </body>
</html>
