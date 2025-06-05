<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora de Notas</title>
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
        .btn-calculate {
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
        .percentage {
            color: #7f8c8d;
            font-size: 0.9em;
        }
        .auto-style1 {
            color: #FFFFFF;
            font-size: 0.9em;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style3 {
            color: #FEFFFF;
            font-size: 0.9em;
        }
        .auto-style4 {
            color: #FEFFFF;
        }
    </style>
</head>
<body>
    <div class="container">
    <img src="img/LOGO-FONDO-BLANCO-JPG%20(1).jpg" style="height: 149px; width: 485px" />
        <h1 class="auto-style2">Calcular Promedio</h1>
        
        <div class="form-group">
            <label for="eva1"><span class="auto-style2">EVA 1 </span> <span class="auto-style1">(10%)</span>:</label>
            <input type="number" id="eva1" min="1" max="7" step="0.1">
        </div>
        
        <div class="form-group">
            <label for="eva2"><span class="auto-style4">EVA 2 </span> <span class="auto-style3">(10%)</span>:</label>
            <input type="number" id="eva2" min="1" max="7" step="0.1">
        </div>
        
        <div class="form-group">
            <label for="eva3"><span class="auto-style4">EVA 3 </span> <span class="auto-style3">(20%)</span>:</label>
            <input type="number" id="eva3" min="1" max="7" step="0.1">
        </div>
        
        <div class="form-group">
            <label for="ep1"><span class="auto-style4">EPE1 </span> <span class="auto-style3">(10%)</span>:</label>
            <input type="number" id="ep1" min="1" max="7" step="0.1">
        </div>
        
        <div class="form-group">
            <label for="ep2"><span class="auto-style4">EPE2 </span> <span class="auto-style3">(20%)</span>:</label>
            <input type="number" id="ep2" min="1" max="7" step="0.1">
        </div>
        
        <div class="form-group">
            <label for="epe3"><span class="auto-style4">EPE 3 </span> <span class="auto-style3">(30%)</span>:</label>
            <input type="number" id="epe3" min="1" max="7" step="0.1">
        </div>
        
        <button class="btn btn-calculate" onclick="calculateGrade()">Calcular Nota Final</button>
        
        <div class="result" id="result">
            Ingrese las notas y haga clic en calcular
        </div>
        
        <button class="btn btn-return" onclick="window.location.href='Index.aspx'">Volver al Menú Principal</button>
    </div>

    <script>
        function calculateGrade() {
            // Obtener valores de los inputs
            const eva1 = parseFloat(document.getElementById('eva1').value);
            const eva2 = parseFloat(document.getElementById('eva2').value);
            const eva3 = parseFloat(document.getElementById('eva3').value);
            const ep1 = parseFloat(document.getElementById('ep1').value);
            const ep2 = parseFloat(document.getElementById('ep2').value);
            const epe3 = parseFloat(document.getElementById('epe3').value);

            // Validar que todos los campos estén completos
            if (isNaN(eva1) || isNaN(eva2) || isNaN(eva3) ||
                isNaN(ep1) || isNaN(ep2) || isNaN(epe3)) {
                document.getElementById('result').textContent = 'Por favor ingrese todas las notas';
                return;
            }

            // Calcular nota final con los porcentajes especificados
            const finalGrade = (eva1 * 0.10) +
                (eva2 * 0.10) +
                (eva3 * 0.20) +
                (ep1 * 0.10) +
                (ep2 * 0.20) +
                (epe3 * 0.30);



            
            // Mostrar resultado

            document.getElementById('result').innerHTML = `
                Nota Final: <strong>${finalGrade.toFixed(2)}</strong><br>           
            `;
           
           
            if (finalGrade.toFixed(2) >= 5.0) {
                mensaje.textContent = "¡Aprobaste la asignatura! 🎉";
                mensaje.style.color = "green";
            }
            else {
                mensaje.textContent = "Reprobaste. Intenta mejorar. 😢";
                mensaje.style.color = "red";
            }
            
        }
    </script>

</body>
</html>