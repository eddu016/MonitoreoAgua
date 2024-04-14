<%-- 
    Document   : index
    Created on : 29 mar 2024, 13:14:55
    Author     : Eduardo Sanchez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Monitoreo calidad agua</title>
        <style>
         body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .sensor {
            margin-bottom: 30px;
        }

        .sensor h2 {
            margin-bottom: 10px;
            color: #555;
        }

        .sensor p {
            margin: 0;
            font-size: 18px;
            color: #777;
        }

        </style>
    </head>
    <body>
        <div class="container">
            <form action="SimuladorCalidadAgua" method="get">
            <h1>Monitor de Calidad de Agua - Comunidad XYZ</h1>
            
            <div class="sensor">
                <h2>Temperatura</h2>
                <p id="temperatura">${temperatura} °C</p>
            </div>
            <div class="sensor">
                <h2>Turbidez</h2>
                <p id="turbidez">${turbidez}</p>
            </div>
            <div class="sensor">
                <h2>pH</h2>
                <p id="ph">${ph}</p>
            </div>
        <a href="SimuladorCalidadAgua" class="btn" id="actualizarBtn" onclick="bloquearBoton()">Obtener datos</a>
            </form>
        </div>
            <script>
                function bloquearBoton(){
                document.getElementById('actualizarBtn').disabled = true;
                }
                // Función para actualizar la página cada 10 segundos
                function actualizarPagina() {
                    location.reload(); // Recarga la página actual
                }

                // Llama a la función actualizarPagina cada 10 segundos
                setInterval(actualizarPagina, 5000); // 5000 milisegundos = 5 segundos
            </script>
    </body>
</html>
