<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Inicio de sesion de usuario</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
</head>
<body>
<h1>Inicio de Sesión</h1>
<form action="${context}/login" method="POST">
    <input type="hidden" value="login" name="action">
    <label>Correo:</label>
    <input class="form-control" type="email" name="email" />
    <br>
    <label>Contraseña:</label>
    <input class="form-control" type="password" name="password" />

    <button type="submit" class="btn btn-success"> Iniciar Sesión </button>
</form>
<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${context}/assets/dist/js/main.js"></script>
</body>
</html>
