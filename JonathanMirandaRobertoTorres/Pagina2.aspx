<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Concatenador de Nombres</title>
    <style>
        body {
            font-family: 'Calibri', sans-serif;
            margin: 0;
            padding: 20px;
            background-color:#000000;
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
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            font-family: 'Calibri', sans-serif;
            margin-top: 10px;
        }
        .btn-concatenate {
            background-color: #2ecc71;
            color: white;
        }
        .btn-return {
            background-color: #e74c3c;
            color: white;
            margin-top: 20px;
        }
        .result {
            margin-top: 20px;
            padding: 10px;
            background-color: #e8f8f5;
            border-radius: 5px;
            font-weight: bold;
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
        
        <div class="form-group">
            <span class="auto-style1">
            <label for="nombre">Nombre:</label></span>
            <input type="text" id="nombre">
        </div>
        
        <div class="form-group">
            <span class="auto-style1">
            <label for="apellido">Apellido:</label></span>
            <input type="text" id="apellido">
        </div>
        
        <button class="btn btn-concatenate" onclick="concatenateNames()">Concatenar</button>
        
        <div class="result" id="result">
            Ingrese nombre y apellido
        </div>
        
        <button class="btn btn-return" onclick="window.location.href='index.aspx'">Volver al Menú Principal</button>
    </div>

    <script>
        function concatenateNames() {
            const nombre = document.getElementById('nombre').value.trim();
            const apellido = document.getElementById('apellido').value.trim();
            
            if (!nombre || !apellido) {
                document.getElementById('result').textContent = 'Por favor ingrese nombre y apellido';
                return;
            }
            
            const nombreCompleto = `${nombre} ${apellido}`;
            document.getElementById('result').textContent = `Nombre completo: ${nombreCompleto}`;
        }
    </script>
</body>
</html>