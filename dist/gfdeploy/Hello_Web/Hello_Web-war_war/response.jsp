<%-- 
    Document   : response
    Created on : 23/03/2023, 07:57:25 PM
    Author     : DanielC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quien eres</title>
    </head>
    <body style="margin: 0; padding: 0; box-sizing: border-box; width: 100vw; height: 100vh; display: flex; align-items: center; justify-content: center; gap: 20px; flex-direction: column; background: buttonface">
        <jsp:useBean id="myBean" scope="session" class="co.edu.unipiloto.metodos.hello.NameHandler" />
        <jsp:setProperty name="myBean" property="nombre" />
        <jsp:setProperty name="myBean" property="apellido" />        
        <jsp:setProperty name="myBean" property="date" /> 
        <article style="display: flex; align-items: center; justify-content: space-around; width: 60vw; height: 5vh; box-shadow: 2px 2px 2px black; padding: 20px; border-radius: 12px; background: white">
            <c:choose>
                <c:when test="${myBean.typeSaludo == 1}">
                    <h2>Buenos días</h2>
                </c:when>
                <c:when test="${myBean.typeSaludo == 2}">
                    <h2>Buenas tardes</h2>
                </c:when>
                <c:when test="${myBean.typeSaludo == 3}">
                    <h2>Buenas noches</h2>
                </c:when>
            </c:choose>
        </article>
        <article style="display: flex; align-items: center; justify-content: space-around; width: 60vw; height: 20vh; box-shadow: 2px 2px 2px black; padding: 20px; border-radius: 12px; background: white">
            <h2>Esta es la información: </h2>
            <section style="display: grid; grid-template-colums: repeat(3, 1fr); gap: 10px">
                <div style="display: flex; flex-direction: column">
                    <label for="nombre" style="font-weight: 100; font-weight: bold">Su nombre es:</label>
                    <span><jsp:getProperty name="myBean" property="nombre" /></span>
                </div>
                <div style="display: flex; flex-direction: column">
                    <label for="apellido" style="font-weight: 100; font-weight: bold">Su apellido es:</label>
                    <span><jsp:getProperty name="myBean" property="apellido" /></span>
                </div>
                <div style="display: flex; flex-direction: column">
                    <label for="date" style="font-weight: 100; font-weight: bold">Fecha de nacimiento:</label>
                    <span><jsp:getProperty name="myBean" property="date" /></span>
                </div>
            </section>
        </article>
    </body>
</html>
