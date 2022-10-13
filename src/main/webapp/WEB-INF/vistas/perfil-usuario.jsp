<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>${usuarioActual.nombre}</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/perfilUsuario.css">
<link rel="stylesheet" href="css/estilos.css" />
<link rel="stylesheet" href="css/styles.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

</head>
<body>

<jsp:include page="header.jsp" />

	<div class="container">
		<div class="usuario-container">

			<div class="flex-container">

				<img src="images/${usuarioActual.foto}">

				<div class="biografia">
					<h2>${usuarioActual.nombre}</h2>
					<p>${usuarioActual.biografia}</p>
				</div>

			</div>
		</div>
	</div>

	<div class="container">
		<a href="editar-perfil" class="btn btn-primary"> Editar Perfil </a>
	</div>
	
	<div class="container">
		<div class="recomendaciones-container">

			<h1>Actividad reciente</h1>

 			<table class="table-responsive table-borderless">
				<c:forEach items="${historial}" var="videojuego">
					<td><a href="videojuego?id=${videojuego.id}"> <img
							src="images/${videojuego.poster}"><br>
							${videojuego.nombre}
					</a></td>
				</c:forEach>
			</table>

		</div>
	</div>


	<div class="container">
		<div class="usuario-container">
			<h3 style="text-align: center;">Reviews recientes</h3>
			<div>
				<c:forEach var="review" items="${usuarioActual.reviews}">
					<c:if test="${review.pelicula != null}">
						<div class="comentario">
							<img src="images/${review.pelicula.poster}">

							<div class="descripcion">
								<h4>${review.pelicula.nombre}</h4>
								<p>${review.descripcion}</p>
							</div>
						</div>
					</c:if>
					
					<c:if test="${review.videojuego != null}">
						<div class="comentario">
							<img src="images/${review.videojuego.poster}">

							<div class="descripcion">
								<h4>${review.videojuego.nombre}</h4>
								<p>${review.descripcion}</p>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</div>
	</div>

<jsp:include page="footer.jsp" />

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>