package Datos;

import Modelos.Usuarios;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Naomi
 */

public class UsuariosDAO {
    
    public static final String selectSQL = "SELECT * FROM usuarios";
    public static final String selectUsuario = "SELECT * FROM usuarios WHERE idusuario = ";
    public static final String insertSQL = "INSERT INTO usuarios(nombre, apellidop, email, password) VALUES (?,?,?,?)";
    public static final  String updateSQL = "UPDATE usuarios SET nombre = ?, apellidop = ?, password = ? WHERE idusuario = ? ";
    public static final String deleteSQL = "DELETE FROM usuarios WHERE idusuario = ? ";
    public static final String checkData = "SELECT * FROM usuarios WHERE email = ? AND password = ?";
    public static final String checkEmail = "SELECT COUNT(*) FROM usuarios WHERE email = ?";

    
    public List<Usuarios> seleccionar(){
        Connection conn = null;
        Statement state = null;
        ResultSet result = null;
        Usuarios user = null;
        
        List<Usuarios> usuarios = new ArrayList<>();
        try{
            conn = Conexion.getConnection();
            state = conn.createStatement();
            result = state.executeQuery(selectSQL);
            
            while(result.next()){
                int idusuario = result.getInt("idusuario");
                String nombre = result.getString("nombre");
                String apellidop = result.getString("apellidop");
                String email = result.getString("email");
                String password = result.getString("password");
                
                user = new Usuarios(idusuario, nombre, apellidop, email, password);
                usuarios.add(user);
            }
            
            Conexion.close(result);
            Conexion.close(state);
            Conexion.close(conn);
            
            for(Usuarios usuario: usuarios){
                System.out.println("Id Usuario: "+ usuario.getIdusuario());
                System.out.println("Nombre: "+ usuario.getNombre());
                System.out.println("Apellido Paterno: "+ usuario.getApellidop());
                System.out.println("Email: "+ usuario.getEmail());
                System.out.println("Contraseña: "+ usuario.getContraseña());
                System.out.println(" \n ");
            }
            
        } catch (Exception e){
            e.printStackTrace();
        }
        return usuarios;
    }
    
    public Usuarios seleccionarUsuario(int idusuario){
        Connection conn = null;
        Statement state = null;
        ResultSet result = null;
        Usuarios user = null;
        
        try{
            conn = Conexion.getConnection();
            state = conn.createStatement();
            result = state.executeQuery(selectUsuario + idusuario);
            
            if(result.next()){
                String nombre = result.getString("nombre");
                String apellidop = result.getString("apellidop");
                String password = result.getString("password");
                
                user = new Usuarios(idusuario, nombre, apellidop, password);
            }
            
        } catch(SQLException e){
            e.printStackTrace();
        } finally {
            Conexion.close(state);
            Conexion.close(conn);
            Conexion.close(result);
        }
        
        return user;
    }
    
     private boolean emailExiste(String email) {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet result = null;

        try {
            conn = Conexion.getConnection();
            state = conn.prepareStatement(checkEmail);
            state.setString(1, email);
            result = state.executeQuery();

            if (result.next()) {
                int count = result.getInt(1);
                return count > 0;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexion.close(result);
            Conexion.close(state);
            Conexion.close(conn);
        }

        return false;
    }
    
    
    public int agregar(Usuarios usuario){
        
        Connection conn = null;
        PreparedStatement state = null;
        
        int registros = 0;
        
        try{
            conn = Conexion.getConnection();
            
            if (emailExiste(usuario.getEmail())) {
                System.out.println("El correo electronico ya esta en uso");
                return registros;
            }
            
            state = conn.prepareStatement(insertSQL);
            state.setString(1, usuario.getNombre());
            state.setString(2, usuario.getApellidop());
            state.setString(3, usuario.getEmail());
            state.setString(4, usuario.getContraseña());
            
            registros = state.executeUpdate();
            
            if(registros>0)
                System.out.println("Registro añadido correctamente");
         
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            Conexion.close(state);
            Conexion.close(conn);
        }
        
        return registros;
    }
    
   
    public int modificar(Usuarios usuario){
        
        Connection conn = null;
        PreparedStatement state = null;
        int registros = 0;
        
        try{
            conn = Conexion.getConnection();
            state = conn.prepareStatement(updateSQL);
            state.setString(1,usuario.getNombre());
            state.setString(2, usuario.getApellidop());
            state.setString(3, usuario.getContraseña());
            state.setInt(4, usuario.getIdusuario());
            
            registros = state.executeUpdate();
            
            if(registros>0)
                System.out.println("Registro actualizado");
            
            Conexion.close(state);
            Conexion.close(conn);
            Usuarios usuarioMod = new Usuarios();
            
        } catch (SQLException e){
            e.printStackTrace();
        }
        return registros;
    }
    
    public int borrar(Usuarios usuario){
        
        Connection conn = null;
        PreparedStatement state = null;
        int registros = 0;
        
        try{
            conn = Conexion.getConnection();
            state = conn.prepareStatement(deleteSQL);
            state.setInt(1,usuario.getIdusuario());
            
            registros = state.executeUpdate();
            
            if(registros>0)
                System.out.println("Registro eliminado");
            
            Conexion.close(state);
            Conexion.close(conn);
            Usuarios usuarioDel = new Usuarios();
            
        } catch (SQLException e){
            e.printStackTrace();
        }
        return registros;
    }
    
    public boolean userLogin(Usuarios usuario){
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet result = null;
        
        try{
            conn = Conexion.getConnection();
            state = conn.prepareStatement(checkData);
            
            state.setString(1, usuario.getEmail());
            state.setString(2, usuario.getContraseña());
            
            result = state.executeQuery();
            
            if(result.next()){
                
                String email = result.getString("email");
                String password = result.getString("password");
                
                if (email.equals(usuario.getEmail()) && password.equals(usuario.getContraseña())) {
                    System.out.println("Login correcto");
                    String nombre = result.getString("nombre");
                    usuario.setNombre(nombre);
                    int idusuario = result.getInt("idusuario");
                    usuario.setIdusuario(idusuario);
                    return true;
                } else {
                    System.out.println("Login incorrecto");
                    return false;
                }
            } else {
                System.out.println("Login incorrecto");
                return false;
            }
            
        } catch (SQLException e){
            e.printStackTrace();
        } finally {
            Conexion.close(state);
            Conexion.close(conn);
            Conexion.close(result);
        }
        
        return false;
    }

    
}
