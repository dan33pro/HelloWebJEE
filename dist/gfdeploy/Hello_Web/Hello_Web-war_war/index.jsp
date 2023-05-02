<%-- 
    Document   : index
    Created on : 23/03/2023, 07:15:07 PM
    Author     : DanielC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quien eres</title>
    </head>
    <body style="margin: 0; padding: 0; box-sizing: border-box; width: 100vw; height: 100vh; display: flex; align-items: center; justify-content: center; background: buttonface">
        <article style="display: flex; align-items: center; justify-content: space-around; width: 60vw; height: 20vh; box-shadow: 2px 2px 2px black; padding: 20px; border-radius: 12px; background: white">
            <h2>Ingrese su información</h2>
            <form name="Registro Entrada" action="response.jsp" style="display: grid; grid-template-colums: repeat(4, 1fr); gap: 10px">
                <div style="display: flex; flex-direction: column; gap: 5px">
                    <label for="nombre" style="font-weight: 100">Nombre</label>
                    <input type="text" id="nombre" name="nombre" placeholder="Ingrese el nombre"/>
                </div>
                <div style="display: flex; flex-direction: column; gap: 5px">
                    <label for="apellido" style="font-weight: 100">Apellido</label>
                    <input type="text" id="apellido" name="apellido" placeholder="Ingrese el apellido" />
                </div>
                <div style="display: flex; flex-direction: column; gap: 5px">
                    <label for="date" style="font-weight: 100">Fecha nacimiento</label>
                    <input type="date" id="date" name="date" value="">
                </div>
                <input type="submit" value="Enviar" />
            </form>
        </article>
    </body>
</html>
