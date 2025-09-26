<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Artistas</title>
    </head>
    <body>
        <h1>Formulario para agregar Artista</h1>
        <form:form method= "POST" action="/artistas/procesa/agregar" modelAttribute="artista">
            <div>
                <form:label path="nombre">
                    Nombre:
                </form:label>
                <form:input path="nombre"/>
                <form:errors path="nombre"/>
            </div>
            <div>
                <form:label path="apellido">
                    Apellido:
                </form:label>
                <form:input path="apellido"/>
                <form:errors path="apellido"/>
            </div>
            <div>
                <form:label path="biografia">
                    Biografia:
                </form:label>
                <form:input path="biografia"/>
                <form:errors path="biografia"/>
            </div>
            <button type="submit">Agregar Artista</button>
        </form:form>
        <a href="/artistas">LISTA DE ARTISTAS AQUI!</a>
</body>
</html>
