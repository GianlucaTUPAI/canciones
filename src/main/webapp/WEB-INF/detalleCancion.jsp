<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detalle Canción</title>
</head>
<body>
    <h1>Detalle de la Canción</h1>

    <p><strong>ID:</strong> ${cancion.id}</p>
    <p><strong>Título:</strong> ${cancion.titulo}</p>
    <p><strong>Artista:</strong> ${cancion.artista}</p>
    <p><strong>Álbum:</strong> ${cancion.album}</p>
    <p><strong>Genero:</strong> ${cancion.genero}</p>
    <p><strong>Idioma:</strong> ${cancion.idioma}</p>
    <button><a href="/canciones">Volver a la lista de Canciones</a></button>

</body>
</html>