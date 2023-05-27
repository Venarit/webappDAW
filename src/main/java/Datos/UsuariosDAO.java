/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
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
    public static final String insertSQL = "INSERT INTO usuarios(nombre, apellidop, email, contraseña) VALUES (?,?,?,?)";
    public static final  String updateSQL = "UPDATE usuarios SET nombre = ?, apellidop = ?, email = ?, contraseña = ?, WHERE idusuario = ? ";
    public static final String deleteSQL = "DELETE FROM usuarios WHERE idusuario = ? ";
    
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
                String contraseña = result.getString("contraseña");
                
                user = new Usuarios(idusuario, nombre, apellidop, email, contraseña);
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
    
    public int agregar(Usuarios usuario){
        
        Connection conn = null;
        PreparedStatement state = null;
        int registros = 0;
        
        try{
            conn = Conexion.getConnection();
            state = conn.prepareStatement(insertSQL);
            state.setString(1, usuario.getNombre());
            state.setString(2, usuario.getApellidop());
            state.setString(3, usuario.getEmail());
            state.setString(4, usuario.getContraseña());
            
            registros = state.executeUpdate();
            
            if(registros>0)
                System.out.println("Registro añadido correctamente");
            
            Conexion.close(state);
            Conexion.close(conn);
            Usuarios usuarioNuevo = new Usuarios();
            
        } catch (Exception e) {
            e.printStackTrace();
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
            state.setString(3, usuario.getEmail());
            state.setString(4, usuario.getContraseña());
            
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
            state = conn.prepareStatement(updateSQL);
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
    
}
