<%-- 
    Document   : login
    Created on : 10 jun 2023, 09:27:42
    Author     : Naomi
--%>
<%@page import="Modelos.Usuarios"%>
<%@page import="Modelos.Perfiles"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nutriguia</title>
        <link rel="icon" type="image/icon" href="assests/img/nutriguia.jpg">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400&family=Syncopate&display=swap" rel="stylesheet">
        
        <link href="../assests/css/stylelogin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <img src="../assests/img/previous.png"  onclick="history.back()" alt="prev"/>
        
        <h1>Nutriguia</h1>
        <p>Iniciar sesion</p>
        
        <div class="container">
            <img src="../assests/avatars/noavatar.png" alt="Avatar" class="avatar"/>
                    
            <form action="<%= request.getContextPath()%>/login"  method="post">
                <input type="text" placeholder="Correo electrónico" name="email" required><!-- comment -->
                <input type="password" placeholder="Contraseña" name="password" required><!-- comment -->
                <button type="submit" class="ingresabtn">Ingresa</button>
                <h3>No tienes cuenta? <a href="signup.jsp">Registrate</a></h3>
            </form>
        </div>
    </body>
</html>
