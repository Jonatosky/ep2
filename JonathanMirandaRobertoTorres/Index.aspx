<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EPE2 - Programacion en C#</title>
    <style>
        body {
            font-family: 'Calibri', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #000000;
        }
        .container {
            max-width: 400px;
            margin left: 10 ;
            text-align: center;
        }
        .logo {
            width: 300px;
            height: 200px;
            margin-bottom: 20px;
        }
        h1 {
            color: #333;
            margin-bottom: 30px;
        }
        .btn-container {
            display: flex;
            flex-direction: column;
            gap: 50px;
            margin-top: 30px;
        }
        .btn {
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            font-family: 'Calibri', sans-serif;
            font-weight: bold;
            transition: all 0.3s;
        }
        .btn-1 {
            background-color: #3498db;
            color: white;
        }
        .btn-2 {
            background-color: #e74c3c;
            color: white;
        }
        .btn-3 {
            background-color: #2ecc71;
            color: white;
        }
        .btn:hover {
            opacity: 0.8;
            transform: translateY(-2px);
        }
        .auto-style1 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <div class="container">
       <img src="img/LOGO-FONDO-BLANCO-JPG%20(1).jpg" style="height: 149px; width: 485px" />
        <h1 class="auto-style1">Roberto Torres</h1>
        <h1 class="auto-style1">Jonathan Miranda</h1>
        
        <div class="btn-container">
            <button class="btn btn-1" onclick="window.location.href='pagina1.aspx'">Calculadora de Notas</button>
            <button class="btn btn-2" onclick="window.location.href='pagina2.aspx'">Concatenar Nombre</button>
            <button class="btn btn-3" onclick="window.location.href='pagina3.aspx'">Formulario de Contacto</button>
        </div>
    </div>
</body>
</html>