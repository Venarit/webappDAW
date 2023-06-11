<%-- 
    Document   : mainview
    Created on : 21 may 2023, 19:21:26
    Author     : Naomi
--%>
<%@page import="Modelos.Usuarios"%>
<%@page import="Modelos.Perfiles"%>
<%@ page import="java.util.List" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NutriguiaM</title>
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400&family=Syncopate&display=swap" rel="stylesheet">
        
        <link href="../assests/css/stylemain.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <%
        if (session == null || session.getAttribute("nombre") == null) {
            response.sendRedirect("index.html");
        } else%> 
        <%{%>
        
            <div class="sidenav" id="sidenavContent">
                <img src="../assests/avatars/man.png" alt="Avatar" class="avatar"/>
                <h3>Bienvenid@ <%= session.getAttribute("nombre") %> </h3>
                <% 
                    List<Perfiles> perfiles = (List<Perfiles>) session.getAttribute("perfiles");

                    if (perfiles == null || perfiles.isEmpty()) {
                    %>
                    <h3>Todavía no tienes ningún perfil. Crea uno.</h3>
                    <% } else { %>
                    <!-- Aquí puedes mostrar los perfiles existentes -->
                <% } %>
                
                <button onclick="location.href='prfl.jsp'">Crear perfil</button>

            </div>

            <div class="main">
                <div class="containerpestaña">
                    <button class="pestaña" onclick="openPage(event, 'op1')">Opcion1</button>
                    <button class="pestaña" onclick="openPage(event, 'op2')">Opcion2</button>
                    <button class="pestaña" onclick="openPage(event, 'op3')">Opcion3</button>
                    <button class="pestaña" onclick="openPage(event, 'op4')">Opcion4</button>
                </div>
                
                <div id="op1" class="pestañacont">
                    <h1>opcion1</h1>
                    <% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>  
                    <p>no se que poner aqui una calculadora creo</p>
                </div>
                
                <div id="op2" class="pestañacont">
                    <h1>opcion2</h1>
                    <p>no se que poner aqui una calculadora creo op2</p>
                </div>
                
                <div id="op3" class="pestañacont">
                    <h1>opcion3</h1>
                    <p>no se que poner aqui una calculadora creo op3</p>
                </div>
                
                <div id="op4" class="pestañacont">
                    <h1>opcion4</h1>
                    <p>info macros</p>
                </div>
            </div>
            
        <%}%>
        <script>
            
            function openPage(evento, opcion){
                var i, pestañacont, pestaña;
                pestañacont = document.getElementsByClassName("pestañacont");
                for(i=0; i<pestañacont.length; i++){
                    pestañacont[i].style.display="none";
                }
                pestaña = document.getElementsByClassName("pestaña");
                for(i=0; i<pestaña.length; i++){
                    pestaña[i].className = pestaña[i].className.replace(" active", "");
                }
                document.getElementById(opcion).style.display = "block";
                evento.currentTarget.className += " active";
            }
            
        </script>
       

        
    </body>
</html>
