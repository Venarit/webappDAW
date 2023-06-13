package Controladores;

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
@WebServlet(name = "delPrflServlet", urlPatterns = {"/delete"})
public class delPrflServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        int idperfil = Integer.parseInt(request.getParameter("idperfil"));
        
        Perfiles perfil = new Perfiles(idperfil);
        PerfilesDAO prflDAO = new PerfilesDAO();
        int registros = prflDAO.modificar(perfil);
        
        if (registros > 0) {
            int idusuario = (int) session.getAttribute("idusuario");
            PerfilesDAO perfilesDAO = new PerfilesDAO();
            List<Perfiles> perfiles = perfilesDAO.seleccionar(idusuario);
            request.getSession().setAttribute("perfil", perfiles);
            
            System.out.println("Perfil eliminado correctamente");
            response.sendRedirect("Views/mainview.jsp");
            
        } else {
            System.out.println("Error en el registro.");
        }
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
