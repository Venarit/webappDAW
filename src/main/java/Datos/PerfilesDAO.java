package Datos;

import Modelos.Perfiles;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Naomi
 */
public class PerfilesDAO {
    public static final String selectSQL = "SELECT * FROM perfilnutricional WHERE r_usuario = ";
    public static final String insertSQL = "INSERT INTO perfilnutricional(peso, altura, sexo, edad, bmr, tdee, r_actividad, r_objetivo, r_macros, nombreperfil, r_usuario) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
    public static final  String updateSQL = "UPDATE perfilnutricional SET peso = ?, altura = ?, sexo = ?, edad = ?, bmr = ?, tdee = ?, r_actividad = ?, r_objetivo = ?, r_macros = ?, nombreperfil = ? WHERE idperfil = ? ";
    public static final String deleteSQL = "DELETE FROM perfilnutricional WHERE idperfil = ? ";
    
    public List<Perfiles> seleccionar(int r_usuario){
        Connection conn = null;
        Statement state = null;
        ResultSet result = null;
        Perfiles prfl = null;
        
        List<Perfiles> perfiles = new ArrayList<>();
        try{
            conn = Conexion.getConnection();
            state = conn.createStatement();
            
            result = state.executeQuery(selectSQL + r_usuario);
            
            while(result.next()){
                int idperfil = result.getInt("idperfil");
                int peso = result.getInt("peso");
                int altura = result.getInt("altura");
                String sexo = result.getString("sexo");
                int edad = result.getInt("edad");
                int bmr = result.getInt("bmr");
                int tdee = result.getInt("tdee");
                int r_actividad = result.getInt("r_actividad");
                int r_objetivo = result.getInt("r_objetivo");
                int r_macros = result.getInt("r_macros");
                String nombreperfil = result.getString("nombreperfil");
                int calorias = result.getInt("calorias");
                
                prfl = new Perfiles(idperfil, r_usuario, peso, altura, sexo, edad, bmr, tdee, r_actividad, r_objetivo, r_macros, nombreperfil, calorias);
                perfiles.add(prfl);
            }
            
            Conexion.close(result);
            Conexion.close(state);
            Conexion.close(conn);
            
            for(Perfiles perfil: perfiles){
                System.out.println("Id Perfil: "+ perfil.getIdperfil());
                System.out.println("Nombre Perfil: "+ perfil.getNombreperfil());
                System.out.println("Peso: "+ perfil.getPeso());
                System.out.println("Altura: "+ perfil.getAltura());
                System.out.println("Sexo: "+ perfil.getSexo());
                System.out.println("Edad: "+ perfil.getEdad());
                System.out.println("BMR: "+ perfil.getBmr());
                System.out.println("TDEE: "+ perfil.getTdee());
                System.out.println("R_Actividad: "+ perfil.getR_actividad());
                System.out.println("R_Objetivo: "+ perfil.getR_objetivo());
                System.out.println("R_Macros: "+ perfil.getR_macros());
                System.out.println("Calorias: "+ perfil.getCalorias());
                System.out.println(" \n ");
            }
            
        } catch(Exception e){
            e.printStackTrace();
        }
        return perfiles;
    }
    
    public int agregar(Perfiles perfil){
        Connection conn = null;
        PreparedStatement state = null;
        
        int registros = 0;
        
        try{
            
            conn = Conexion.getConnection();
            state = conn.prepareStatement(insertSQL);
            
            state.setDouble(1, perfil.getPeso());
            state.setInt(2, perfil.getAltura());
            state.setString(3, perfil.getSexo());
            state.setInt(4, perfil.getEdad());
            state.setInt(5, perfil.getBmr());
            state.setInt(6, perfil.getTdee());
            state.setInt(7, perfil.getR_actividad());
            state.setInt(8, perfil.getR_objetivo());
            state.setInt(9, perfil.getR_macros());
            state.setString(10, perfil.getNombreperfil());
            state.setInt(11, perfil.getR_usuario());
            state.setInt(12, perfil.getCalorias());
            
            registros = state.executeUpdate();
            
            if(registros>0)
                System.out.println("Registro añadido correctamente");
            
        } catch (Exception e){
            e.printStackTrace();
        } finally {
            Conexion.close(state);
            Conexion.close(conn);
        }
        return registros;
    }
    
    public int modificar(Perfiles perfil){
        Connection conn = null;
        PreparedStatement state = null;
        int registros = 0;
        
        try{
            conn = Conexion.getConnection();
            state = conn.prepareStatement(updateSQL);
            
            state.setDouble(1, perfil.getPeso());
            state.setInt(2, perfil.getAltura());
            state.setString(3, perfil.getSexo());
            state.setInt(4, perfil.getEdad());
            state.setInt(5, perfil.getBmr());
            state.setInt(6, perfil.getTdee());
            state.setInt(7, perfil.getR_actividad());
            state.setInt(8, perfil.getR_objetivo());
            state.setInt(9, perfil.getR_macros());
            state.setString(10, perfil.getNombreperfil());
            state.setInt(11, perfil.getCalorias());
            
            registros = state.executeUpdate();
            
            if(registros>0)
                System.out.println("Registro actualizado");
            
            Conexion.close(state);
            Conexion.close(conn);
            Perfiles perfilMod = new Perfiles();
            
        } catch (SQLException e){
            e.printStackTrace();
        }
        return registros;
    }
    
    public int borrar(Perfiles perfil){
        Connection conn = null;
        PreparedStatement state = null;
        int registros = 0;
        
        try{
            conn = Conexion.getConnection();
            state = conn.prepareStatement(deleteSQL);
            
            state.setInt(1,perfil.getIdperfil());
            
            registros = state.executeUpdate();
            
            if(registros>0)
                System.out.println("Registro eliminado");
            
            Conexion.close(state);
            Conexion.close(conn);
            Perfiles perfilDel = new Perfiles();
            
        } catch (SQLException e){
            e.printStackTrace();
        }
        return registros;
    }
    
}
