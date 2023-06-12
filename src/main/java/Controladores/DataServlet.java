package Controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Datos.ActividadDAO;
import Datos.MacrosDAO;
import Datos.ObjetivosDAO;
import Datos.PerfilesDAO;
import Modelos.Actividadm;
import Modelos.Macros;
import Modelos.Objetivos;
import Modelos.Perfiles;
import Modelos.Usuarios;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Naomi
 */
@WebServlet(name = "DataServlet", value = {"/DataServlet", "/prflData"})
public class DataServlet extends HttpServlet {
    
    ActividadDAO actividadDAO = new ActividadDAO();
    ObjetivosDAO objetivosDAO = new ObjetivosDAO();
    MacrosDAO macrosDAO = new MacrosDAO();
    Usuarios usuario = new Usuarios();
    PerfilesDAO perfilesDAO = new PerfilesDAO();
    List<Actividadm> actividades = actividadDAO.seleccionar();
    List<Objetivos> objetivos = objetivosDAO.seleccionar();
    List<Macros> macros = macrosDAO.seleccionar();
    
    protected void sendPath(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        request.getSession().setAttribute("actividad", actividades);
        request.getSession().setAttribute("objetivo", objetivos);
        request.getSession().setAttribute("macros", macros);
        switch(request.getServletPath()){
            
            case "/DataServlet":
                response.sendRedirect(request.getContextPath()+"/Views/prfl.jsp");
                break;
            case "/prflData":
                
                int idperfil = Integer.parseInt(request.getParameter("idperfil"));
                
                System.out.println("Valor del idperfil: " + idperfil);
                
                PerfilesDAO perfilesDAO = new PerfilesDAO();
                Perfiles perfil = perfilesDAO.seleccionarPefil(idperfil);
                
                if(perfil != null){
                    session.setAttribute("idperfil", perfil.getIdperfil());
                    request.getSession().setAttribute("perfil", perfil);
                    response.sendRedirect(request.getContextPath()+"/Views/prfledit.jsp");
                } else{
                    response.sendRedirect(request.getContextPath()+"/Views/mainview.jsp");
                }
                
                
                break;
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        sendPath(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         sendPath(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
