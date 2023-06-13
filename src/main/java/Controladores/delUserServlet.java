package Controladores;

import Datos.UsuariosDAO;
import Modelos.Usuarios;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "delUserServlet", urlPatterns = {"/delUserServlet"})
public class delUserServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        int idusuario = Integer.parseInt(request.getParameter("idusuario"));
        
        System.out.print(idusuario);
        Usuarios usuario = new Usuarios(idusuario);
        UsuariosDAO usuarioDAO = new UsuariosDAO();
        int registros = usuarioDAO.borrar(usuario);
        
        if (registros > 0) {
            System.out.println("Perfil eliminado correctamente");
            response.sendRedirect("../index.html");
            
        } else {
            System.out.println("Error en el registro.");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
