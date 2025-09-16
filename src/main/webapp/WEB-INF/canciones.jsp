<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <title>Canciones</title>
    </head>
        <body>
            <h1>Lista de Canciones</h1>
            <table>
                <tr>
                    <th>titulo</th>
                    <th>artista</th>
                </tr>
                <c:forEach var="cancion" items="${canciones}">
                <tr>
                    <td><c:out value="${cancion.titulo}"/></td>
                    <td><c:out value="${cancion.artista}"/></td>
                    <td><button><a href="/canciones/detalle/${cancion.id}">Ver Detalle</a></button></td>
                </c:forEach>
                </tr>
            </table>
        </body>
</html>