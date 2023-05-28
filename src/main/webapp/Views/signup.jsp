<%-- 
    Document   : login
    Created on : 14 may 2023, 02:03:08
    Author     : Naomi
--%>
<%@page import="Modelos.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400&family=Syncopate&display=swap" rel="stylesheet">
        <link href="../assests/css/stylesignup.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
      
        <a href="mainview.jsp">
            <img src="../assests/img/previous.png" alt="prev"/>
        </a>
        
        <h1>Nutriguia</h1>
        <p>Registro</p>
        
        <div class="container">
            <form method="post" action="signup" class="signup-form" id="signup-form">
                <input type="text" placeholder="Correo electrónico" name="email" required><!-- comment -->
                <input type="text" placeholder="Nombre" name="nombre" required>
                <input type="text" placeholder="Apellido" name="apellido" required>
                <input type="text" placeholder="Contraseña" name="password" required>
                <input type="text" placeholder="Repetir contraseña" name="password2" required><!-- comment -->
                <button type="submit" class="registrobtn" value="signup">Crear cuenta</button>
            </form>
            
        </div>
    </body>
</html>
