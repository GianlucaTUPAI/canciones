<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Detalle del Artista</title>
</head>
    <body>
        <h1>Detalle del Artista</h1>
        <p><strong>Nombre:</strong> ${artista.nombre}</p>
        <p><strong>Apellido:</strong> ${artista.apellido}</p>
        <p><strong>Biografia:</strong> ${artista.biografia}</p>
<%----lista de canciones asociadas al artista----%>
        <h2>Canciones del Artista</h2>
        <c:if test="${empty artista.canciones}">
            <p>Este artista no tiene canciones asociadas.</p>
        </c:if>
        <c:if test="${not empty artista.canciones}">
            <p>Lista de canciones:</p>
            <ul>
                <c:forEach var="cancion" items="${artista.canciones}">
                    <li>${cancion.titulo}</li>
                </c:forEach>
            </ul> 
        </c:if>
        <br>
        <a href="/artistas">Volver a la lista de Artistas</a>
    </body>
</html>