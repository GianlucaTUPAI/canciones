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
                </tr>
                <c:forEach var="cancion" items="${canciones}">
                <tr>
                    <td><c:out value="${cancion.titulo}"/></td>
                    <td><button><a href="/canciones/detalle/${cancion.id}">Ver Detalle</a></button></td>
                </c:forEach>
                </tr>
            </table>
            <a href="/canciones/formulario/agregar">AGREGAR CANCION</a>
            <a href="/artistas">IR A ARTISTA</a>
            <a href="/artistas/formulario/agregar">AGREGA UN ARTISTA!</a>
        </body>
</html>