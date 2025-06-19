<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Calculadora</title>
  <style>
    body {
      font-family: 'Calibri', sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #333;
    }
    .h2 {
        background-color: white; 
        color: #333;
        margin-top: 20px;
        font-size: 18px;
        }
    input, select, button {
      background-color: white;
        color: #000000;
      margin: 10px;
      padding: 10px;
      font-size: 16px;
    }
    .resultado {
        background-color: white;
        color: #000000;
      margin-top: 20px;
      font-size: 18px;
    }
    
  </style>

</head>
<body>
    <img src="img/LOGO-FONDO-BLANCO-JPG%20(1).jpg" style="height: 149px; width: 485px" />
  <h2 class="auto-style2">Calculadora con Opcion de Operacion </h2>

  <input type="number" id="num1" placeholder="Primer número">
  <input type="number" id="num2" placeholder="Segundo número"><br>

  <select id="operacion">
    <option value="suma">Suma</option>
    <option value="resta">Resta</option>
    <option value="multiplicacion">Multiplicación</option>
    <option value="division">División</option>
  </select><br>

  <button onclick="calcular()">Calcular</button>

  <div class="resultado" id="resultado"></div>

  <script>
      function calcular() {
          const n1 = parseFloat(document.getElementById("num1").value);
          const n2 = parseFloat(document.getElementById("num2").value);
          const operacion = document.getElementById("operacion").value;
          const resultadoDiv = document.getElementById("resultado");

          if (isNaN(n1) || isNaN(n2)) {
              resultadoDiv.innerHTML = "Por favor, ingresa dos números válidos.";
              return;
          }

          let resultado;

          switch (operacion) {
              case "suma":
                  resultado = n1 + n2;
                  break;
              case "resta":
                  resultado = n1 - n2;
                  break;
              case "multiplicacion":
                  resultado = n1 * n2;
                  break;
              case "division":
                  if (n2 === 0) {
                      resultado = "No se puede dividir por cero.";
                  } else {
                      resultado = (n1 / n2).toFixed(2);
                  }
                  break;
              default:
                  resultado = "Operación no válida.";
          }

          resultadoDiv.innerHTML = `Resultado: ${resultado}`;
      }
  </script>

</body>
</html>

<button class="btn btn-return" onclick="window.location.href='index.aspx'">Volver al Menú Principal</button>
</div>