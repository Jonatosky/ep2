<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ámbito de Variables</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 40px;
            text-align: center;
        }
        h2 {
            margin-bottom: 30px;
        }
        .btn {
            padding: 12px 20px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin: 10px;
        }
        .btn-mostrar {
            background-color: #2ecc71;
            color: white;
        }
        .btn-volver {
            background-color: #e74c3c;
            color: white;
        }
        .resultado {
            margin-top: 30px;
            font-size: 18px;
            text-align: left;
            display: inline-block;
        }
    </style>
</head>
<body>

    <h2>Ejemplo de Ámbito de Variables</h2>

    <button class="btn btn-mostrar" onclick="mostrarVariables()">Mostrar Variables</button>

    <div class="resultado" id="resultado"></div>

    <br><br>
     <button class="btn btn-return" onclick="window.location.href='Index.aspx'">Volver al Menú Principal</button>

    <script>
        // Variable de instancia (simulada como global en JS)
        let variableInstancia = 20;

        // Variable estática (simulada como propiedad de una función)
        function obtenerEstatica() {
            if (typeof obtenerEstatica.variableEstatica === 'undefined') {
                obtenerEstatica.variableEstatica = 30;
            }
            return obtenerEstatica.variableEstatica;
        }

        function mostrarVariables() {
            // Variable local
            let variableLocal = 10;

            // Resultado combinado
            let resultadoTexto =
                "Variable Local: " + variableLocal + "<br>" +
                "Variable de Instancia: " + variableInstancia + "<br>" +
                "Variable Estática: " + obtenerEstatica();

            document.getElementById("resultado").innerHTML = resultadoTexto;
        }

        function volver() {
            window.location.href = "Index.html";
        }
    </script>

</body>
</html>