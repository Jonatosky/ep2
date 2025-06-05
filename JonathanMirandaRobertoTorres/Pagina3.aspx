<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Contacto</title>
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
            width: 100px;
            height: 100px;
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
        input, textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-family: 'Calibri', sans-serif;
        }
        textarea {
            height: 100px;
            resize: vertical;
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
        .btn-submit {
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
            padding: 15px;
            background-color: #e8f8f5;
            border-radius: 5px;
            text-align: left;
        }
        .result h3 {
            margin-top: 0;
            color: #2c3e50;
        }
        .auto-style1 {
            color: #FFFFFF;
        }
        .auto-style2 {
            color: #FEFFFF;
        }
    </style>
</head>
<body>
    <div class="container">
     <img src="img/LOGO-FONDO-BLANCO-JPG%20(1).jpg" style="height: 149px; width: 485px" />
        <h1 class="auto-style1">Formulario de Contacto</h1>
        <h1 class="auto-style1">Favor ingresar Datos</h1>
        
        <div class="form-group">
            <span class="auto-style1">
            <label for="nombre">Nombre:</label></span>
            <input type="text" id="nombre" required>
        </div>
        
        <div class="form-group">
            <span class="auto-style1">
            <label for="apellido">Apellido:</label></span>
            <input type="text" id="apellido" required>
        </div>
        
        <div class="form-group">
            <span class="auto-style1">
            <label for="celular">Celular:</label></span>
            <input type="tel" id="celular" required>
        </div>
        
        <div class="form-group">
            <span class="auto-style1">
            <label for="email">Email:</label></span>
            <input type="email" id="email" required>
        </div>
        
        <div class="form-group">
            <label for="problema"><span class="auto-style2">Descripción del problema:</span></label>
            <textarea id="problema" required></textarea>
        </div>
        
        <button class="btn btn-submit" onclick="submitForm()">Enviar Formulario</button>
        
        <div class="result" id="result" style="display: none;">
            <h3>Información enviada:</h3>
            <p id="result-content"></p>
        </div>
        
        <button class="btn btn-return" onclick="window.location.href='index.aspx'">Volver al Menú Principal</button>
    </div>

    <script>
        function submitForm() {
            const nombre = document.getElementById('nombre').value.trim();
            const apellido = document.getElementById('apellido').value.trim();
            const celular = document.getElementById('celular').value.trim();
            const email = document.getElementById('email').value.trim();
            const problema = document.getElementById('problema').value.trim();
            
            // Validación básica
            if (!nombre || !apellido || !celular || !email || !problema) {
                alert('Por favor complete todos los campos');
                return;
            }
            
            // Mostrar resultados ordenados
            const resultContent = `
                <strong>El correo fue enviado correctamente a:</strong> ${nombre + apellido}<br>
                <strong>Celular:</strong> ${celular}<br>
                <strong>Email:</strong> ${email}<br>
                <strong>Problema:</strong> ${problema}
            `;
            
            document.getElementById('result-content').innerHTML = resultContent;
            document.getElementById('result').style.display = 'block';
        }
    </script>
</body>
</html>