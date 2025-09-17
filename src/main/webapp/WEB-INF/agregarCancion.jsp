<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Canciones</title>
    </head>
    <body>
        <h1>Formulario para agregar canciones</h1>
        <form:form method= "POST" action="/canciones/procesa/agregar" modelAttribute="cancion">
            <div>
                <form:label for="titulo" path="titulo">
                    Titulo:
                </form:label>
                <form:input type="text" path="titulo"/>
                <form:errors path="titulo"/>
            </div>
            <div>
                <form:label for="artista" path="artista">
                    Artista:
                </form:label>
                <form:input type="text" path="artista"/>
                <form:errors path="artista"/>
            </div>
            <div>
                <form:label for="album" path="album">
                    Album:
                </form:label>
                <form:input type="text" path="album"/>
                <form:errors path="album"/>
            </div>
            <div>
                <form:label for="genero" path="genero">
                    Genero:
                </form:label >
                <form:input type="text" path="genero"/>
                <form:errors path="genero"/>
            </div>
            <div>
                <form:label for="idioma" path="idioma">
                    Idioma:
                </form:label>
                <form:input type="text" path="idioma"/>
                <form:errors path="idioma"/>
            </div>
            <button type="submit">Agregar Cancion</button>
        </form:form>
        <button><a href="/canciones">¡LISTA DE CANCIONES AQUI!</a></button>
    </body>
</html>