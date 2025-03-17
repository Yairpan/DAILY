<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    
    HttpSession sessionBienvenida = request.getSession(false);

    if (sessionBienvenida == null || sessionBienvenida.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String usuario = (String) sessionBienvenida.getAttribute("usuario");
    
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0
    response.setHeader("Expires", "0"); // Proxies
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Bienvenido</title>
</head>
<body>
    <h1>Inicio de sesión exitoso!</h1>
    <p>Bienvenido, <%= usuario %>!</p>

    
    <form action="${pageContext.request.contextPath}/LogoutServlet" method="get">
        <button type="submit">Cerrar sesión</button>
    </form>
</body>
</html>

