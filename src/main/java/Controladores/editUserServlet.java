package Controladores;

import Datos.PerfilesDAO;
import Datos.UsuariosDAO;
import Modelos.Perfiles;
import Modelos.Usuarios;
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
@WebServlet(name = "editUser", urlPatterns = {"/editUser"})
public class editUserServlet extends HttpServlet {

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
        int idusuario = (int) session.getAttribute("idusuario");
        
        String nombre = request.getParameter("nombre");
        String apellidop = request.getParameter("apellidop");
        String contraseña = request.getParameter("contraseña");
        
        Usuarios usuario = new Usuarios(idusuario, nombre, apellidop, contraseña);
        UsuariosDAO usuarioDAO = new UsuariosDAO();
        int registros = usuarioDAO.modificar(usuario);
        
        if (registros > 0) {
            
            PerfilesDAO perfilesDAO = new PerfilesDAO();
            List<Perfiles> perfiles = perfilesDAO.seleccionar(idusuario);
            request.getSession().setAttribute("perfil", perfiles);
            
            System.out.println("User modificado correctamente");
            response.sendRedirect("Views/mainview.jsp");
            
        } else {
            PrintWriter out = response.getWriter();
            System.out.println("Error en el registro. Por favor, intenta nuevamente.");
        }
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
