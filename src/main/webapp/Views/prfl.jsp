<%-- 
    Document   : prfl
    Created on : 10 jun 2023, 12:41:17
    Author     : Naomi
--%>
<%@page import="java.util.List"%>
<%@page import="Modelos.Perfiles"%>
<%@page import="Modelos.Macros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NutriguiaM</title>
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400&family=Syncopate&display=swap" rel="stylesheet">
        
        <link href="../assests/css/styleprfl.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div clas="cont">
            <form action="<%= request.getContextPath()%>/prflServlet"  method="post" class="prfl-form" id="prfl-form">
           
                <label for="nombreperfil">Nombre del Perfil</label>
                <input type="text" placeholder="Ingrese el Nombre del Perfil" name="nombreperfil" id="nombreperfil" required>
                
                <label for="sexo">Género</label>
                <select id="sexo" name="sexo">
                    <option value="Femenino">Femenino</option>
                    <option value="Masculino">Masculino</option>
                </select>
                
                <label for="peso">Peso (kg)</label>
                <input type="text" placeholder="Ingrese el peso en kg" name="peso" required>
                
                <label for="altura">Altura (cm)</label>
                <input type="number" name="altura" min="1" max="300" required>
                
                <label for="edad">Edad</label>
                <input type="number" name="edad" min="1" max="120"  required>
                
                <button type="submit" class="crearprflbtn" value="crearprfl">Crear perfil</button>
            
            </form>
            
        </div>
        
        
    </body>
</html>
