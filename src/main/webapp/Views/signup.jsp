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
            <form action="<%= request.getContextPath()%>/signup"  method="post" class="signup-form" id="signup-form" onsubmit="return validarFormulario()">
                <input type="text" placeholder="Correo electrónico" name="email" id="email" required>
                <input type="text" placeholder="Nombre" name="nombre"  required>
                <input type="text" placeholder="Apellido" name="apellidop" required>
                <input type="password" placeholder="Contraseña" name="password" id="password" required>
                <input type="password" placeholder="Repetir contraseña" name="password2" id="password2" required>
                <button type="submit" class="registrobtn" value="signup">Crear cuenta</button>
            </form>
            
        </div>
                
                <script>
                    function validarFormulario(){
                        var email = document.getElementById("email").value;
                        var password = document.getElementById("password").value;
                        var password2 = document.getElementById("password2").value;
                        
                        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                        if (!emailRegex.test(email)){
                            alert("Ingrese un email válido");
                            return false;
                        }
                        if(password !== password2){
                            alert("Las contraseñas no coinciden");
                            return false;
                        }
                        
                        return true;
                    }
                </script>
    </body>
</html>
