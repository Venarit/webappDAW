package Controladores;

import Datos.ActividadDAO;
import Datos.ObjetivosDAO;
import Datos.PerfilesDAO;
import Modelos.Perfiles;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Naomi
 */
@WebServlet(name = "editPrflServlet", urlPatterns = {"/editPrflServlet"})
public class editPrflServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        HttpSession session = request.getSession();
        int idperfil = (int) session.getAttribute("idperfil");
        
        
        String nombreperfil = request.getParameter("nombreperfil");
        String sexo = request.getParameter("sexo");
        double peso = Double.parseDouble(request.getParameter("peso"));
        int altura = Integer.parseInt(request.getParameter("altura"));
        int edad = Integer.parseInt(request.getParameter("edad"));
        int r_actividad = Integer.parseInt(request.getParameter("r_actividad"));
        int r_objetivo = Integer.parseInt(request.getParameter("r_objetivo"));
        int r_macros = Integer.parseInt(request.getParameter("r_macros"));
        
        int bmr;
        if(sexo.equals("Masculino")){
            bmr = (int) ((10*peso)+(6.25*altura)-(5*edad)+5);
        } else {
            bmr = (int) ((10*peso)+(6.25*altura)-(5*edad)-161);
        }
        
        int tdee;
        ActividadDAO actividadDAO = new ActividadDAO();
        double factorAct = actividadDAO.seleccionarFactor(r_actividad);
        
        tdee = (int)((bmr)*(factorAct));
        
        ObjetivosDAO objetivosDAO = new ObjetivosDAO();
        int objcalorias = objetivosDAO.seleccionarCalorias(r_objetivo);
        int calorias = ((tdee)+(objcalorias));
        
        Perfiles perfil = new Perfiles(idperfil, peso, altura, sexo, edad, bmr, tdee, r_actividad, r_objetivo, r_macros, nombreperfil, calorias);
        PerfilesDAO prflDAO = new PerfilesDAO();
        int registros = prflDAO.modificar(perfil);
        
        if (registros > 0) {
            
            System.out.println("Perfil añadido correctamente");
            response.sendRedirect("Views/mainview.jsp");
        } else {
            PrintWriter out = response.getWriter();
            System.out.println("Error en el registro. Por favor, intenta nuevamente.");
        }
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
