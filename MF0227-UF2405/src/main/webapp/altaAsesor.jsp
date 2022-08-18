<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Alta de asesor de seguros</h1>
    <form action="resumenAsesor.jsp" method="post">
        <div>
            <label for="nombre"> Nombre:</label>
            <input type="text" name="nombre" id="nombre" >
        </div>
        <div>
            <label for="apellidos"> Apellidos:</label>
            <input type="text" name="apellidos" id="apellidos" >
        </div>
        <div>
            <label for="dni"> DNI:</label>
            <input type="text" name="dni" id="dni" pattern="[0-9]{8}[A-Za-z]{1}">
        </div>
        <div>
            <label for="contrato">Relación Contractual:</label>
            <select name="contrato" id="contrato">
                <option value="autonomo">Autónomo</option>
                <option value="fijo">Asalariado fijo</option>
                <option value="comision">Asalariado a Comisión</option>
            </select>
        </div>
        <div>
            <label for="seguro">Tipo de Seguros que vende:</label>
            <input type="radio" name="seguro" id="automovil" value="automovil" checked>
            <label for="automovil">Automóvil</label>
        
            <input type="radio" name="seguro" id="hogar" value="hogar" >
            <label for="hogar">Hogar</label>

            <input type="radio" name="seguro" id="decesos" value="decesos" >
            <label for="decesos">Decesos</label>
        </div>
        <div>
            <label for="promedio">Núm. Ventas Promedio:<sub>*</sub> :</label>
            <input type="number" name="promedio" id="promedio" min="1" value="15"step="1">
        </div>
        <div>
            <input type="submit" value="Confirmar">
        </div>
    </form>
</body>
</html>