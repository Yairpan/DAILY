<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily - Gestión Financiera</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="nav-container">
            <h1 class="logo">DAILY</h1>
            <nav>
                <ul class="nav-links">
                    <li><a href="#">Inicio</a></li>
                    <li><a href="#">Gastos</a></li>
                    <li><a href="#">Ingresos</a></li>
                    <li><a href="#">Presupuestos</a></li>
                    <li><a href="#">Reportes</a></li>
                    <li><a href="#">Contacto</a></li>
                </ul>
            </nav>
            <a href="login.jsp" class="login-btn">Iniciar Sesión</a>
        </div>
    </header>
    
    <section class="hero">
        <div class="text-container">
            <h2>Tu Socio en Gestión Financiera</h2>
            <p>Controla tus gastos, planifica tus presupuestos y genera reportes para alcanzar la estabilidad financiera que necesitas.</p>
            <div class="buttons">
                <button class="btn-primary">Ver Gastos</button>
                <button class="btn-secondary">Ver Reportes</button>
            </div>
        </div>
        <div class="image-container">
            <img src="graph.png" alt="Gráfico financiero">
        </div>
    </section>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f7fa;
        }

        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #1E3A8A;
            padding: 15px 50px;
            color: white;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
        }

        .nav-links {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 16px;
        }

        .login-btn {
            background-color: #2563EB;
            padding: 10px 15px;
            border-radius: 5px;
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        .hero {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 50px;
        }

        .text-container {
            max-width: 50%;
        }

        .text-container h2 {
            font-size: 28px;
            color: #1E3A8A;
        }

        .text-container p {
            color: #555;
            font-size: 16px;
        }

        .buttons {
            margin-top: 20px;
        }

        .btn-primary {
            background-color: #1E3A8A;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        .btn-secondary {
            background-color: #6c757d;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        .image-container img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
        }
    </style>
</body>
</html>
