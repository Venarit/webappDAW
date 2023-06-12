package Controladores;

import Datos.PerfilesDAO;
import java.sql.SQLException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Datos.UsuariosDAO;
import Modelos.Perfiles;
import Modelos.Usuarios;
import java.util.List;

/**
 *
 * @author Naomi
 */
@WebServlet(name = "loginServlet", urlPatterns = {"/login"})
public class loginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        UsuariosDAO userDAO = new UsuariosDAO();
        
        Usuarios usuario = new Usuarios();
        
        HttpSession session = request.getSession();
        
        usuario.setEmail(email);
        usuario.setContraseña(password);
        
        boolean loginExitoso = userDAO.userLogin(usuario);
         
        if (loginExitoso) {
            PerfilesDAO perfilesDAO = new PerfilesDAO();
            List<Perfiles> perfiles = perfilesDAO.seleccionar(usuario.getIdusuario());
            request.getSession().setAttribute("perfil", perfiles);
            
            session.setAttribute("idusuario", usuario.getIdusuario());
            session.setAttribute("nombre", usuario.getNombre());
            response.sendRedirect(request.getContextPath() +"/Views/mainview.jsp");
            
        } else {
            response.sendRedirect(request.getContextPath() +"/Views/login.jsp");
        }
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
