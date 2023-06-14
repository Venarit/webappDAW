<%-- 
    Document   : mainview
    Created on : 21 may 2023, 19:21:26
    Author     : Naomi
--%>
<%@page import="Modelos.Alimentos"%>
<%@page import="java.util.Map"%>
<%@page import="Modelos.Macros"%>
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
                    <h2>Bienvenid@ <%= session.getAttribute("nombre") %></h2> <i class="fa-solid fa-pen fa-xl" onclick="location.href='<%= request.getContextPath()%>/userData?idusuario=<%=session.getAttribute("idusuario")%>'"></i>
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
                                        
                                    </div>
                                    <div class="col-50">
                                        <p>Altura: <%= perfil.getAltura()%> cm</p>
                                        <p>Peso: <%= perfil.getPeso() %> kg</p>
                                        
                                    </div>
                                    <button class="editar" onclick="location.href='<%= request.getContextPath()%>/prflData?idperfil=<%= perfil.getIdperfil() %>'">Editar</button>    
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
                    <button class="pestaña" onclick="openPage(event, 'op1')">Consumo de calorias</button>
                    <button class="pestaña" onclick="openPage(event, 'op2')">Distribucion de macronutrientes</button>
                    <button class="pestaña" onclick="openPage(event, 'op3'); ">Alimentos</button>
                    
                   
                </div>
                
                <div id="op1" class="pestañacont">
                    <img src="../assests/img/health.png" alt="img1" class="img1"/>
                    
                    <div class="textdiv">
                        
                        <h1>Consumo de calorías</h1>
                        <p>
                            La cantidad de calorías que necesitamos depende de tu tasa metabólica basal(TMB), del nivel de actividad física que se tenga,
                            tus metas específicas y tu peso actual. 
                        </p><br><!-- comment -->
                        <%if(perfiles != null) {
                            for (Perfiles perfil : perfiles) { %>
                            <p>Calorias diarias para perfil "<%= perfil.getNombreperfil()%>"</p>
                            <input type="text" value="<%= perfil.getCalorias() %>" id="inputcal" name="inputcal" disabled><br>
                        <% } 
                        }%>
                        
                        <h1>Tasa metabolica basal</h1>
                        <p>
                            La tasa metabólica basal es la cantidad de energía necesaria para las funciones fisiológicas de su cuerpo en reposo, como la respiración, los latidos del corazón y la actividad cerebral.
                            Esta cantidad de energía requerida se mide en kilocalorías. Son las necesidades calóricas del cuerpo en reposo y sin actividad adicional.
                            Para calcularla se utiliza la ecuación de Mifflin-St Jeor, ya que de las que existen es la más utilizada por llegar a tener una estimación más cercana de la verdadera TBM.
                        </p><br>
                        <h2>Hombres:
                            TMB = (10 × peso [kg]) + (6.25 × altura [cm]) – (5 × edad [sño]) + 5</h2>
                        <h2>Mujeres:
                            TMB = (10 × peso [kg]) + (6.25 × altura [cm]) – (5 × edad [años]) – 161 
                        </h2><br>
                        
                        <%if(perfiles != null) {
                            for (Perfiles perfil : perfiles) { %>
                            <p>TMB perfil "<%= perfil.getNombreperfil()%>"</p>
                            <input type="text" value="<%= perfil.getBmr() %>" id="inputbmr" name="inputbmr" disabled><br>
                        <% } 
                        }%>
                        
                        <h1>Gasto Energético Total</h1>
                        <p>El Gasto energético total (GET) la cantidad de calorías que quema una persona a lo largo del día, en función del nivel de actividad física.
                            Se obtiene multiplicando la tasa metabólica basal por el factor de actividad.</p><br>
                        <h2>TDEE = BMR × Factor de actividad</h2><br>
                        
                        <%if(perfiles != null) {
                            for (Perfiles perfil : perfiles) { %>
                            <p>GET perfil "<%= perfil.getNombreperfil()%>"</p>
                            <input type="text" value="<%= perfil.getTdee() %>" id="inputtdee" name="inputtdee" disabled><br><br>
                        <% } 
                        }%>
                        
                    </div>
                </div>
                <% Map<Integer,Macros> macrosmap = (Map<Integer,Macros>) request.getSession().getAttribute("macros"); %>
                        
                <div id="op2" class="pestañacont">
                    <div class="textdiv">
                        <h1>Balance de Macronutrientes </h1>
                        <p>Se obtienen los balances de los macronutrientes según las kcal diarias y la distribución especificada por perfil </p> <br>
                        
                        <%if(perfiles != null) {
                            for (Perfiles perfil : perfiles) { %>
                            
                            <%if(macrosmap != null) {
                                    %>
                            <p>Perfil "<%= perfil.getNombreperfil()%>": <%= perfil.getCalorias() %> kcal/dia</p>
                        <table class="macrotable">
                            <tr>
                                <th> Unidad </th>
                                <th> Carbohidratos </th>
                                <th> Proteina </th>
                                <th> Lipidos </th>
                            </tr>
                            <tr>
                                <th>kcal/dia</th>
                                <th><%= macrosmap.get(perfil.getR_macros()).getHco() * perfil.getCalorias()  %></th>
                                <th><%= macrosmap.get(perfil.getR_macros()).getProteina() * perfil.getCalorias() %></th>
                                <th><%= macrosmap.get(perfil.getR_macros()).getLipidos() * perfil.getCalorias() %></th>
                            </tr>
                            <tr>
                                <th>gramos/dia</th>
                                <th><%= (macrosmap.get(perfil.getR_macros()).getHco() * perfil.getCalorias())/4  %></th>
                                <th><%= (macrosmap.get(perfil.getR_macros()).getProteina() * perfil.getCalorias())/4 %></th>
                                <th><%= (macrosmap.get(perfil.getR_macros()).getLipidos() * perfil.getCalorias())/9 %></th>
                            </tr>
                        </table><br><br>
                        <%
                        }%>
                        
                        <% } 
                        }%>
                        <p>Los alimentos que consumes todos los días se componen de macronutrientes y micronutrientes. Los micronutrientes son las vitaminas y minerales que complementan el cuerpo para apoyar a la salud en general, mientras que los macronutrientes son los componentes de los alimentos que suministran energía al cuerpo.
                            Los tres macronutrientes, carbohidratos, proteínas y grasas, proporcionan calorías para conseguir energía durante todo el día.</p>
                        <img src="../assests/img/keto-7617639_1920.png" alt="img2" class="img2"/>
                    </div>
                </div>
                
               
                <% List<Alimentos> listaalm = (List<Alimentos>) request.getSession().getAttribute("alimentos"); %>
                <div id="op3" class="pestañacont">
                    <h1>Alimentos</h1>
                    <p>Sistema Mexicano de Alimentos Equivalente</p>
                    
                    <input type="text" id="searchInput" placeholder="Buscar alimentos...">
                    
                    
                    <table class="tableali">
                        <tr>
                            <th>Nombre</th>
                            <th>Cant sugerida</th>
                            <th>Unidad</th>
                            <th>Peso bruto(g)</th>
                            <th>Peso neto(g)</th>
                            <th>Energia(kcal)</th>
                            <th>Proteina(g)</th>
                            <th>Lipidos(g)</th>
                            <th>Hidratos de carbono(g)</th>
                        </tr>
                        <%if(listaalm != null) {
                        for (Alimentos alimento : listaalm) { %>
                        <tr>
                            <th><%= alimento.getNombre() %></th>
                            <th><%= alimento.getCantidad_sugerida() %></th>
                            <th><%= alimento.getUnidad() %></th>
                            <th><%= alimento.getPeso_bruto() %></th>
                            <th><%= alimento.getPeso_neto() %></th>
                            <th><%= alimento.getEnergia() %></th>
                            <th><%= alimento.getProteina() %></th>
                            <th><%= alimento.getLipidos() %></th>
                            <th><%= alimento.getHco() %></th>
                        </tr>
                        <%} 
                        }%>
                    </table>
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
            
            var rows = document.getElementsByClassName("tableali")[0].rows;

            document.getElementById("searchInput").addEventListener("input", function() {
                var filter = this.value.toLowerCase();

                for (var i = 1; i < rows.length; i++) {
                    var name = rows[i].getElementsByTagName("th")[0].innerText.toLowerCase();
                    if (name.indexOf(filter) > -1) {
                        rows[i].style.display = "";
                    } else {
                        rows[i].style.display = "none";
                    }
                }
            });
        </script>
       

        
    </body>
</html>
