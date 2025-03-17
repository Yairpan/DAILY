<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio - DAILY</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
        }
        .menu {
            background-color: #333;
            padding: 10px;
        }
        .menu a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 18px;
        }
        .menu a:hover {
            text-decoration: underline;
        }
        .btn {
            background-color: #00c6fd;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #0088cc;
        }
    </style>
</head>
<body>
    <div class="menu">
        <a href="${pageContext.request.contextPath}/index.jsp">Inicio</a>
        <a href="${pageContext.request.contextPath}/jsp/login.jsp">Iniciar sesión</a>
        <a href="${pageContext.request.contextPath}/jsp/bienvenido.jsp">Bienvenido</a>
    </div>
    
    <h1>Bienvenido a DAILY</h1>
    <p>Tu aplicación para gestionar tus finanzas.</p>

    
    <form action="${pageContext.request.contextPath}/jsp/login.jsp">
        <button class="btn" type="submit">Iniciar sesión</button>
    </form>
</body>
</html>
