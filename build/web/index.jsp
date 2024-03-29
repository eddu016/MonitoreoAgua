<%-- 
    Document   : index
    Created on : 29 mar 2024, 14:17:22
    Author     : Eduardo Sanchez
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Inicio de Simulación</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 100px auto;
            text-align: center;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Bienvenido al Inicio de Simulación</h1>
    <p>Haga clic en el botón para iniciar la simulación:</p>
    <form action="mostrar_datos.jsp">
        <button type="submit">Iniciar Simulación</button>
    </form>
</div>
</body>
</html>

