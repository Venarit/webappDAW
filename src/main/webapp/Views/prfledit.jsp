
<%@page import="Modelos.Macros"%>
<%@page import="Modelos.Objetivos"%>
<%@page import="Modelos.Actividadm"%>
<%@page import="Modelos.Perfiles"%>
<%@page import="java.util.List"%>

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
            Perfiles perfil = (Perfiles) request.getSession().getAttribute("perfil");
            if (perfil == null) {
                response.sendRedirect("/Views/mainview.jsp");
            } else{
            
                String nombre = perfil.getNombreperfil();
                double peso = perfil.getPeso();
                int altura = perfil.getAltura();
                int edad = perfil.getEdad();
                String sexo = perfil.getSexo();
                int actividad = perfil.getR_actividad();
                int objetivo = perfil.getR_objetivo();
                int macros = perfil.getR_macros();
        %> 
        <img class="back" src="../assests/img/previous.png"  onclick="history.back()" alt="prev"/>
        
        
        <div class="contimg">
            <img class="prflimg" src="../assests/img/editicon.jpg" alt=""/>
        </div>
        
        <h1>Editar perfil</h1>
        
        <div class="cont">
            <form action="<%= request.getContextPath()%>/editPrflServlet"  method="post" class="prfl-form" id="prfl-form">
               
                <div class="row">
                    <div class="col-50">
                        <label for="nombreperfil">Nombre del Perfil:</label>
                        <input type="text" maxlength="45" value="<%= nombre %>" name="nombreperfil" id="nombreperfil" required>

                        <label for="peso">Peso (kg):</label>
                        <input type="text" value="<%= peso %>" name="peso" required>

                        <label for="altura">Altura (cm):</label>
                        <input type="number" value="<%= altura %>" name="altura" min="1" max="300" required>

                        <label for="edad">Edad:</label>
                        <input type="number" value="<%= edad %>" name="edad" min="18" max="80"  required>
                    </div>
                    
                    <div class="col-50">
                        
                        <label for="sexo">Género:</label>
                        <select id="sexo" name="sexo">
                            <option value="Femenino" <%= (sexo.equals("Femenino")) ? "selected" : "" %>>Femenino</option>
                            <option value="Masculino" <%= (sexo.equals("Masculino")) ? "selected" : "" %>>Masculino</option>
                        </select>
                        
                        <label for="r_actividad"><i class="fa-solid fa-circle-info" onclick="openModal('modal1')"></i> Nivel de actividad:</label>
                        <select id="r_actividad" name="r_actividad">
                            <option value="1" <%= (actividad == 1) ? "selected" : "" %>>Sedentario</option>
                            <option value="2" <%= (actividad == 2) ? "selected" : "" %>>Ligeramente activo</option>
                            <option value="3" <%= (actividad == 3) ? "selected" : "" %>>Moderadamente activo</option>
                            <option value="4" <%= (actividad == 4) ? "selected" : "" %>>Muy activo</option>
                            <option value="5" <%= (actividad == 5) ? "selected" : "" %>>Extremadamente activo</option>
                        </select>

                        <label for="r_objetivo"><i class="fa-solid fa-circle-info" onclick="openModal('modal2')"></i> Objetivo:</label>
                        <select id="r_objetivo" name="r_objetivo">
                            <option value="1" <%= (objetivo == 1) ? "selected" : "" %>>Mantener</option>
                            <option value="2" <%= (objetivo == 2) ? "selected" : "" %>>Perdida leve</option>
                            <option value="3" <%= (objetivo == 3) ? "selected" : "" %>>Perdida moderada</option>
                            <option value="4" <%= (objetivo == 4) ? "selected" : "" %>>Ganar musculo/peso</option>
                        </select>

                        <label for="r_macros"><i class="fa-solid fa-circle-info" onclick="openModal('modal3')"></i> Distribución de macronutrientes:</label>
                        <select id="r_macros" name="r_macros">
                            <option value="1" <%= (macros == 1) ? "selected" : "" %>>Balanceado</option>
                            <option value="2" <%= (macros == 2) ? "selected" : "" %>>Bajo en lipidos</option>
                            <option value="3" <%= (macros == 3) ? "selected" : "" %>>Alta en proteina</option>
                            <option value="4" <%= (macros == 4) ? "selected" : "" %>>Alta en carbohidratos</option>
                            <option value="5" <%= (macros == 5) ? "selected" : "" %>>Keto</option>
                        </select>
                        
                    </div>
                    
                </div>
            
                    <button type="submit" class="modprflbtn" value="modprfl" >Guardar cambios</button>
                    
                <%}%>
                
            </form>
                
        </div>
            
                <button class="borrarbtn" value="borrar" onclick="openModal('modal4')">Borrar perfil</button>
        
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
                    
        <div id="modal4" class="modal">
            <div class="modal-content">
                <span class="close" onclick="closeModal('modal4')">&times;</span>
                <h3>¿Estás seguro?</h3>
                
                <button class="yesbtn" value="confirmar" onclick="location.href='<%= request.getContextPath()%>/delete?idperfil=<%= perfil.getIdperfil() %>'">Borrar</button>
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
