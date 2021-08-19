<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Listado de videojuegos</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>
<body>
<button id="btn-create" type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#createGame"><i class="fas fa-plus"></i>  Registrar juego </button> </a>
<table id="container" class="table table-hover">
    <thead class="table-dark">
    <tr>
        <th>#</th>
        <th>Nombre</th>
        <th>Fecha</th>
        <th>Imagen</th>
        <th>Estado</th>
        <th>Acciones</th>
    </tr>
    </thead>
    <tbody></tbody>
</table>

<div class="modal fade" id="createGame" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel2">Registrar juego</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <label>Nombre del juego:</label>
                <br>
                <input type="text" id="name">
                <br><br>
                <label>Imagen:</label>
                <br>
                <input type="file" id="imgGame" img src="data:image/jpeg;base64,${ game.imgGame }">
                <br><br>
                <label>Fecha de estreno:</label>
                <input type="date" id="datePremiere">
                <br><br>
                <label>Categoria:</label>
                <select id="Category_idCategory" name="Category_idCategory">
                    <option value="0">Categorias</option>
                    <option value="1">Accion</option>
                    <option value="2">Deportivo</option>
                    <option value="3">Estrategia</option>
                </select>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-success" onclick="createGame()">Agregar registro</button>
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><i class="fas fa-sign-out-alt"></i> Cerrar </button>
            </div>
        </div>
    </div>
</div>

<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="${context}/assets/dist/js/main.js"></script>
</body>
</html>