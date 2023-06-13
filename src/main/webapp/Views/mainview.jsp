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
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,300;0,400;1,100&family=Poppins:ital,wght@0,100;0,200;1,100&family=Syncopate&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/773b0b6249.js" crossorigin="anonymous"></script>
        <link href="../assests/css/stylemain.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        <%
        if (session == null || session.getAttribute("nombre") == null) {
            response.sendRedirect("../index.html");
        } else {%> 
        <div class="full">
            <div class="sidenav" id="sidenavContent">
                <div class="topsidenav">
                    <i class="fa-solid fa-right-from-bracket fa-2x" onclick="location.href='<%= request.getContextPath()%>/logout'"></i>
                    <img src="../assests/avatars/man.png" alt="Avatar" class="avatar"/>
                    <h2>Bienvenid@ <%= session.getAttribute("nombre") %></h2>
                </div>
                <div class="bottomsidenav">
                    
                <% 
                    List<Perfiles> perfiles = (List<Perfiles>) session.getAttribute("perfil");

                    if (perfiles == null || perfiles.isEmpty()) {
                    %>
                    <h3>Todavía no tienes ningún perfil. Crea uno.<h3>
                    <% } else { %>
                    <h3>Perfiles:</h3>
                    <div class="perfilescont">
                        <%if(perfiles != null) {
                            for (Perfiles perfil : perfiles) { %>
                            
                                <button class="perfilcont"><%= perfil.getNombreperfil() %></button>
                                <div class="prflpanel">
                                    <div class="col-50">
                                        <p>Sexo: <%= perfil.getSexo() %></p>
                                        <p>Edad: <%= perfil.getEdad() %></p>
                                        <button class="editar" onclick="location.href='<%= request.getContextPath()%>/prflData?idperfil=<%= perfil.getIdperfil() %>'">Editar</button>
                                    </div>
                                    <div class="col-50">
                                        <p>Altura: <%= perfil.getAltura()%> cm</p>
                                        <p>Peso: <%= perfil.getPeso() %> kg</p>
                                        <button class="seleccionar">Seleccionar</button>
                                    </div>
                                        
                                </div>
                                
                            <%} 
                        }%>
                    </div>  
                    <%}%>
                    <% if(perfiles.size()>=3){%>
                        <button class="crearprflbtn">Max. perfiles alcanzados</button>
                    <%} else{%>
                        <button class="crearprflbtn" onclick="location.href='<%= request.getContextPath()%>/DataServlet'">Crear perfil</button>
                     <%   }%>
                
                </div>   
            </div>

            <div class="main">
                <div class="containerpestaña">
                    <button class="pestaña" onclick="openPage(event, 'op1')">Distribucion macros</button>
                    <button class="pestaña" onclick="openPage(event, 'op2')">Opcion2</button>
                    <button class="pestaña" onclick="openPage(event, 'op3')">Opcion3</button>
                    <button class="pestaña" onclick="openPage(event, 'op4'); ">Opcion4</button>
                    
                   
                </div>
                
                <div id="op1" class="pestañacont">
                    <h1>Consumo de calorías</h1>
                    <p>
                        La cantidad de calorías que necesitamos depende de tu tasa metabólica basal(TMB), del nivel de actividad física que se tenga,
                        tus metas específicas y tu peso actual. 
                    </p>
                         
                        
                    <img src="../assests/img/health.png" alt="img1" class="img1"/>
                   
                    <div class="textdiv">
                        <h1>Tasa metabolica basal</h1>
                        <p>
                            La tasa metabólica basal es la cantidad de energía necesaria para las funciones fisiológicas de su cuerpo en reposo, como la respiración, los latidos del corazón y la actividad cerebral.
                            Esta cantidad de energía requerida se mide en kilocalorías. Son las necesidades calóricas del cuerpo en reposo y sin actividad adicional.
                            Para calcularla se utiliza la ecuación de Mifflin-St Jeor, ya que de las que existen es la más utilizada por llegar a tener una estimación más cercana de la verdadera TBM.
                        </p>
                        <h2>Hombres:
                            BMR = (10 × weight [kg]) + (6.25 × height [cm]) – (5 × age [years]) + 5</h2>
                        <h2>Mujeres
                            BMR = (10 × weight [kg]) + (6.25 × height [cm]) – (5 × age [years]) – 161 
                        </h2>
                        
                    </div>
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
            
            var prflcont = document.getElementsByClassName("perfilcont");
            var i;

            for (i = 0; i < prflcont.length; i++) {
              prflcont[i].addEventListener("click", function() {
                this.classList.toggle("active");

                var prflpanel = this.nextElementSibling;
                if (prflpanel.style.display === "block") {
                  prflpanel.style.display = "none";
                } else {
                  prflpanel.style.display = "block";
                }
              });
            }
            
        </script>
       

        
    </body>
</html>
