<html lang="es">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <meta charset="UTF-8">
    <title>Artistas</title>
</head>
<body>
    <h1>Lista de Artistas</h1>
        <ul>
            <c:forEach var="artista" items="${artistas}">
                <li>
                    <a href="/artistas/detalle/${artista.id}">${artista.nombre} ${artista.apellido}</a>
                </li>
            </c:forEach>
        </ul>
        <div>
            <a href="/canciones">Ir a Canciones</a>
            <button><a href="/artistas/formulario/agregar">AGREGA UN ARTISTA!</a></button>
        </div>
</body>
</html>