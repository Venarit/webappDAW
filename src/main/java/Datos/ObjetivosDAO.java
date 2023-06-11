package Datos;
import Modelos.Objetivos;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Naomi
 */
public class ObjetivosDAO {
    
    public static final String selectSQL = "SELECT * FROM objetivo";
    
    public List<Objetivos> seleccionar(){
        Connection conn = null;
        Statement state = null;
        ResultSet result = null;
        Objetivos obj = null;
        
        List<Objetivos> objetivos = new ArrayList<>();
        try{
            conn = Conexion.getConnection();
            state = conn.createStatement();
            result = state.executeQuery(selectSQL);
            
            while(result.next()){
                int idobjetivo = result.getInt("idobjetivo");
                String nombre = result.getString("nombre");
                String descripcion = result.getString("descripcion");
                int calorias = result.getInt("calorias");
                
                obj = new Objetivos(idobjetivo, nombre, descripcion, calorias);
                objetivos.add(obj);
            }
            
            Conexion.close(result);
            Conexion.close(state);
            Conexion.close(conn);
            
            for(Objetivos actividad: objetivos){
                System.out.println("Id Objetivo: "+ actividad.getIdobjetivo());
                System.out.println("Nombre: "+ actividad.getNombre());
                System.out.println("Descripcion: "+ actividad.getDescripcion());
                System.out.println("Calorias: "+ actividad.getCalorias());
                System.out.println(" \n ");
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return objetivos;
        
    }
}
