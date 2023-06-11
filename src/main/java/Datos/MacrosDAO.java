package Datos;
import Modelos.Macros;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Naomi
 */
public class MacrosDAO {
    
    public static final String selectSQL = "SELECT * FROM macros";
    
    public List<Macros> seleccionar(){
        Connection conn = null;
        Statement state = null;
        ResultSet result = null;
        Macros mac = null;
        
        List<Macros> macros = new ArrayList<>();
        try{
            conn = Conexion.getConnection();
            state = conn.createStatement();
            result = state.executeQuery(selectSQL);
            
            while(result.next()){
                int idmacros = result.getInt("idmacros");
                String nombre = result.getString("nombre");
                String descripcion = result.getString("descripcion");
                double hco = result.getDouble("hco");
                double lipidos = result.getDouble("lipidos");
                double proteina = result.getDouble("proteina");
                
                mac = new Macros(idmacros, nombre, descripcion, hco, lipidos, proteina);
                macros.add(mac);
            }
            
            Conexion.close(result);
            Conexion.close(state);
            Conexion.close(conn);
            
            for(Macros macro: macros){
                System.out.println("Id Actividad: "+ macro.getIdmacros());
                System.out.println("Nombre: "+ macro.getNombre());
                System.out.println("Descripcion: "+ macro.getDescripcion());
                System.out.println("HCO: "+ macro.getHco());
                System.out.println("Lipidos: "+ macro.getLipidos());
                System.out.println("Proteina: "+ macro.getProteina());
                System.out.println(" \n ");
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return macros;
        
    }
}
