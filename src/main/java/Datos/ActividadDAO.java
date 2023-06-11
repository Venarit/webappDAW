package Datos;
import Modelos.Actividadm;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Naomi
 */
public class ActividadDAO {
    
    public static final String selectSQL = "SELECT * FROM actividad";
    
    public List<Actividadm> seleccionar(){
        Connection conn = null;
        Statement state = null;
        ResultSet result = null;
        Actividadm act = null;
        
        List<Actividadm> actividades = new ArrayList<>();
        try{
            conn = Conexion.getConnection();
            state = conn.createStatement();
            result = state.executeQuery(selectSQL);
            
            while(result.next()){
                int idactividad = result.getInt("idactividad");
                String nombre = result.getString("nombre");
                double factor = result.getDouble("factor");
                String descripcion = result.getString("descripcion");
                
                act = new Actividadm(idactividad, nombre, factor, descripcion);
                actividades.add(act);
            }
            
            Conexion.close(result);
            Conexion.close(state);
            Conexion.close(conn);
            
        } catch (Exception e){
            e.printStackTrace();
        }
        return actividades;
        
    }
    
}
