<%-- 
    Document   : prfl
    Created on : 10 jun 2023, 12:41:17
    Author     : Naomi
--%>
<%@page import="Modelos.Objetivos"%>
<%@page import="java.util.List"%>
<%@page import="Modelos.Perfiles"%>
<%@page import="Modelos.Macros"%>
<%@page import="Modelos.Actividadm"%>

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
        <script src="https://kit.fontawesome.com/773b0b6249.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <%
        if (session == null || session.getAttribute("nombre") == null) {
            response.sendRedirect("../index.html");
        } else{ 
        %> 
        
        <h1>Crear perfil</h1>
        <div clas="cont">
            <form action="<%= request.getContextPath()%>/prflServlet"  method="post" class="prfl-form" id="prfl-form">
                <div class="row">
                    <div class="col-50">
                        <label for="nombreperfil">Nombre del Perfil:</label>
                        <input type="text" placeholder="Ingrese el nombre del perfil" name="nombreperfil" id="nombreperfil" required>

                        <label for="peso">Peso (kg):</label>
                        <input type="text" placeholder="Ingrese el peso en kilogramos" name="peso" required>

                        <label for="altura">Altura (cm):</label>
                        <input type="number" placeholder="Ingrese la altura en centimetros" name="altura" min="1" max="300" required>

                        <label for="edad">Edad:</label>
                        <input type="number" placeholder="Ingrese la edad" name="edad" min="18" max="80"  required>
                    </div>
                    
                    <div class="col-50">
                        
                        <label for="sexo">Género:</label>
                        <select id="sexo" name="sexo">
                            <option value="Femenino">Femenino</option>
                            <option value="Masculino">Masculino</option>
                        </select>
                        
                        <label for="r_actividad"><i class="fa-solid fa-circle-info" onclick="openModal('modal1')"></i> Nivel de actividad:</label>
                        <select id="r_actividad" name="r_actividad">
                            <option value="1">Sedentario</option>
                            <option value="2">Ligeramente activo</option>
                            <option value="3">Moderadamente activo</option>
                            <option value="4">Muy activo</option>
                            <option value="5">Extremadamente activo</option>
                        </select>

                        <label for="r_objetivo"><i class="fa-solid fa-circle-info" onclick="openModal('modal2')"></i> Objetivo:</label>
                        <select id="r_objetivo" name="r_objetivo">
                            <option value="1">Mantener</option>
                            <option value="2">Perdida leve</option>
                            <option value="3">Perdida moderada</option>
                            <option value="4">Ganar musculo/peso</option>
                        </select>

                        <label for="r_macros"><i class="fa-solid fa-circle-info" onclick="openModal('modal3')"></i> Distribución de macronutrientes:</label>
                        <select id="r_macros" name="r_macros">
                            <option value="1">Balanceado</option>
                            <option value="2">Bajo en lipidos</option>
                            <option value="3">Alta en proteina</option>
                            <option value="4">Alta en carbohidratos</option>
                            <option value="5">Keto</option>
                        </select>
                        
                    </div>
                    
                </div>
                
                
                <button type="submit" class="crearprflbtn" value="crearprfl">Crear perfil</button>
            
                
                
            </form>
            
        </div>
        
        <% List<Actividadm> listaact = (List<Actividadm>) request.getSession().getAttribute("actividad"); %>
        <% List<Objetivos> listaobj = (List<Objetivos>) request.getSession().getAttribute("objetivo"); %>
        <% List<Macros> listamac = (List<Macros>) request.getSession().getAttribute("macros"); %>
        <div id="modal1" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('modal1')">&times;</span>
                
                <table class="tabla">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Descripción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if(listaact != null) {
                        for (Actividadm actividad : listaact) { %>
                            <tr>
                                <td><%= actividad.getNombre() %></td>
                                <td><%= actividad.getDescripcion() %></td>
                            </tr>
                        <%} 
                        }%>
                    </tbody>
                </table>
            </div>
        </div>
        
        <div id="modal2" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('modal2')">&times;</span>
                
                <table class="tabla">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Descripción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if(listaobj != null) {
                        for (Objetivos objetivo : listaobj) { %>
                            <tr>
                                <td><%= objetivo.getNombre() %></td>
                                <td><%= objetivo.getDescripcion() %></td>
                            </tr>
                        <%} 
                        }%>
                    </tbody>
                </table>
            </div>
        </div>   
               
        <div id="modal3" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('modal3')">&times;</span>
                
                <table class="tabla">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Descripción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%if(listamac != null) {
                        for (Macros macros : listamac) { %>
                            <tr>
                                <td><%= macros.getNombre() %></td>
                                <td><%= macros.getDescripcion() %></td>
                            </tr>
                        <%} 
                        }%>
                    </tbody>
                </table>
            </div>
        </div>
                    
        <%}%>
        <script>
            // Función para abrir el modal
            function openModal(modalId) {
              document.getElementById(modalId).style.display = "block";
            }

            // Función para cerrar el modal
            function closeModal(modalId) {
              document.getElementById(modalId).style.display = "none";
            }
        </script>
        
    </body>
</html>
