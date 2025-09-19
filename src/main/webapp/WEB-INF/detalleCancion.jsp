<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detalle Canción</title>
</head>
<body>
    <h1>Detalle de la Canción</h1>

    <p><strong>Título:</strong> ${cancion.titulo}</p>
    <p><strong>Artista:</strong> ${cancion.artista}</p>
    <p><strong>Álbum:</strong> ${cancion.album}</p>
    <p><strong>Genero:</strong> ${cancion.genero}</p>
    <p><strong>Idioma:</strong> ${cancion.idioma}</p>
    <button><a href="/canciones">Volver a la lista de Canciones</a></button>
    <form action="/canciones/eliminar/${cancion.id}" method="POST">
        <input type="hidden" name="_method" value="DELETE">
        <button type="submit">Eliminar Canción</button>
    </form>
    <form method="GET" action="/canciones/formulario/actualizar/${cancion.id}">
        <button>Actualizar</button>
    </form>

</body>
</html>