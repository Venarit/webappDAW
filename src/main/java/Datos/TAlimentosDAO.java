package Datos;

import Modelos.TAlimentos;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Naomi
 */
public class TAlimentosDAO {
    
    public static final String selectSQL = "SELECT * FROM tipo_alimentos";
    
    public List<TAlimentos> seleccionar(){
        Connection conn = null;
        Statement state = null;
        ResultSet result = null;
        TAlimentos t_al = null;
        
        List<TAlimentos> talimentos = new ArrayList<>();
        try{
            conn = Conexion.getConnection();
            state = conn.createStatement();
            result = state.executeQuery(selectSQL);
            
            while(result.next()){
                int idtipo_alimentos = result.getInt("idtipo_alimentos");
                String nombre = result.getString("nombre");
                
                t_al = new TAlimentos(idtipo_alimentos, nombre);
                talimentos.add(t_al);
            }
            
            Conexion.close(result);
            Conexion.close(state);
            Conexion.close(conn);
            
            for(TAlimentos talimento: talimentos){
                System.out.println("Id Tipo alimentos: "+ talimento.getIdtipo_alimentos());
                System.out.println("Nombre: "+ talimento.getNombre());
                System.out.println(" \n ");
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return talimentos;
    }
    
}
