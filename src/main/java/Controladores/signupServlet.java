package Controladores;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Datos.UsuariosDAO;
import Modelos.Usuarios;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Naomi
 */
@WebServlet(name = "signupServlet", value = {"/signup"})
public class signupServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String nombre = request.getParameter("nombre");
        String apellidop = request.getParameter("apellidop");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Usuarios usuario = new Usuarios(nombre, apellidop, email, password);
        UsuariosDAO userDAO = new UsuariosDAO();
        int registros = userDAO.agregar(usuario);
        
        if (registros > 0) {
            System.out.println("Registro añadido correctamente");
            
        } else {
            PrintWriter out = response.getWriter();
            out.println("Error en el registro. Por favor, intenta nuevamente.");
        }
        
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
    }
    @Override
    public String getServletInfo() {
        return "Registro de cuentas";
    }// </editor-fold>

}
