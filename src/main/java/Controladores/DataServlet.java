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

/**
 *
 * @author Naomi
 */
@WebServlet(name = "DataServlet", urlPatterns = {"/DataServlet"})
public class DataServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        ActividadDAO actividadDAO = new ActividadDAO();
        List<Actividadm> actividades = actividadDAO.seleccionar();
        request.getSession().setAttribute("actividad", actividades);
        
        ObjetivosDAO objetivosDAO = new ObjetivosDAO();
        List<Objetivos> objetivos = objetivosDAO.seleccionar();
        request.getSession().setAttribute("objetivo", objetivos);
        
        MacrosDAO macrosDAO = new MacrosDAO();
        List<Macros> macros = macrosDAO.seleccionar();
        request.getSession().setAttribute("macros", macros);
        
        Usuarios usuario = new Usuarios();
        PerfilesDAO perfilesDAO = new PerfilesDAO();
        List<Perfiles> perfiles = perfilesDAO.seleccionar(usuario.getIdusuario());
        request.getSession().setAttribute("perfil", perfiles);
        
        response.sendRedirect(request.getContextPath()+"/Views/prfl.jsp");
       
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
