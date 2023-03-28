<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAW</title>
    </head>
    <body>
    <c:set var="quote" value="Hola mundo"/>

    <h1>Scopes</h1>
    <section>
        <h2>Con Scope específico</h2>
        <p>Application: ${applicationScope.character}</p>

        <p>Session: ${sessionScope.city}</p>

        <p>Request: ${requestScope.book}</p>

        <p>Page: ${pageScope.quote}</p>
    </section>

    <section>
        <h2>Sin Scope específico</h2>
        <p>Application: ${character}</p>

        <p>Session: ${city}</p>

        <p>Request: ${book}</p>

        <p>Page: ${quote}</p>
    </section>

</body>
</html>
