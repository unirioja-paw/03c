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
        <style>
            .box {
                padding: 10px;
                margin: 50px 0;
                border: solid 4px #CCC;
                font-family: verdana;
            }
            .box-blue {
                border-color: blue;
            }
            .box-green {
                border-color: green;
            }
            .box-yellow {
                border-color: yellow;
            }
            .box-red{
                border-color: red;
            }
        </style>
    </head>
    <body>
        <h1>Expression Language (EL)</h1>

        <section>
            <h2>Objetos implícitos</h2>
            <div class="box box-yellow">
                <b>initParam (parámetro 'version'):</b> ${initParam.version}
            </div>
            <div class="box box-red">
                <b>scriptlet:</b> <%= getInitParameter("version")%>
            </div>

            <div class="box box-green">
                <b>servletConfig:</b> ${pageContext.servletConfig.getInitParameter("version")}
            </div>
            <div class="box box-blue">
                <b>servletContext:</b> ${pageContext.servletContext.getInitParameter('version')}
            </div>

        </section>

    </body>
</html>
