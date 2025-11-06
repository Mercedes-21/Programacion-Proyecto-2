<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cosméticos Mercy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hero-section {
            background-color: #fce4ec;
            padding: 60px 0;
            margin-bottom: 40px;
        }
        .main-button {
            margin: 10px;
            padding: 15px 30px;
            font-size: 1.2em;
        }
        .card {
            transition: transform 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">Cosméticos Mercy</a>
        </div>
    </nav>

    <div class="hero-section">
        <div class="container text-center">
            <h1 class="display-4 mb-4">Bienvenida a Cosméticos Mercy</h1>
            <p class="lead">Sistema de Gestión de Productos y Ventas</p>
        </div>
    </div>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card text-center mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Gestión de Productos</h5>
                        <p class="card-text">Administre el inventario de productos cosméticos</p>
                        <a href="${pageContext.request.contextPath}/productos" class="btn btn-primary main-button">
                            Ir a Productos
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-center mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Gestión de Ventas</h5>
                        <p class="card-text">Registre y administre las ventas</p>
                        <a href="${pageContext.request.contextPath}/ventas" class="btn btn-success main-button">
                            Ir a Ventas
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="bg-light mt-5 py-3">
        <div class="container text-center">
            <p>© 2025 Cosméticos Mercy - Todos los derechos reservados</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
