package Controladores;

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
import Modelos.Usuarios;

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
        usuario.setEmail(email);
        usuario.setContraseña(password);
        
         boolean loginExitoso = userDAO.userLogin(usuario);
         
         if (loginExitoso) {
            HttpSession session = request.getSession();
            session.setAttribute("nombre", usuario.getNombre());
            response.sendRedirect("Views/mainview.jsp"); 
            
        } else {
            response.sendRedirect("Views/mainview.jsp");
        }
        
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}