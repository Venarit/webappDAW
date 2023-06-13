<%-- 
    Document   : useredit
    Created on : 13 jun 2023, 13:11:51
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
       <%
        if (session == null || session.getAttribute("nombre") == null) {
            response.sendRedirect("../index.html");
        } 
            Usuarios usuario = (Usuarios) request.getSession().getAttribute("Usuario");
        %> 
        <img src="../assests/img/previous.png" onclick="history.back()" alt="prev"/>
        
        <h1>Nutriguia</h1>
        <p>Editar datos de usuario</p>
        
        <div class="container">
            <form action="<%= request.getContextPath()%>/editUser"  method="post" class="signup-form" id="signup-form" onsubmit="return validarFormulario()">
                <input type="text" value="<%= usuario.getNombre() %>" placeholder="Nombre" name="nombre"  required>
                <input type="text" value="<%= usuario.getApellidop() %>" placeholder="Apellido" name="apellidop" required>
                <input type="password" value="<%= usuario.getContraseña() %>" placeholder="Contraseña" name="password" id="password" required>
                <input type="password" value="<%= usuario.getContraseña() %>" placeholder="Repetir contraseña" name="password2" id="password2" required>
                <button type="submit" class="registrobtn" value="signup">Editar cuenta</button>
            </form>

            <button type="submit" class="borrarbtn" value="delete" onclick="location.href='<%= request.getContextPath()%>/delUserServlet?idusuario=<%= usuario.getIdusuario() %>'">Borrar cuenta</button>

        </div>
                
                <script>
                    function validarFormulario(){
                        var password = document.getElementById("password").value;
                        var password2 = document.getElementById("password2").value;
                        
                        if(password !== password2){
                            alert("Las contraseñas no coinciden");
                            return false;
                        }
                        
                        return true;
                    }
                </script>
    </body>
</html>
