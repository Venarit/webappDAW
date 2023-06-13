package Datos;
import Modelos.Alimentos;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Naomi
 */
public class AlimentosDAO {
    public static final String selectSQL = "SELECT * FROM alimentos";
    
    public List<Alimentos> seleccionar(){
        Connection conn = null;
        Statement state = null;
        ResultSet result = null;
        Alimentos almt = null;
        
        List<Alimentos> alimentos = new ArrayList<>();
        try{
            conn = Conexion.getConnection();
            state = conn.createStatement();
            result = state.executeQuery(selectSQL);
            
            while(result.next()){
                
                int idalimentos = result.getInt("idalimentos");
                String nombre = result.getString("nombre");
                int r_tipo = result.getInt("r_tipo");
                double cantidad_sugerida = result.getDouble("cantidad_sugerida");
                String unidad = result.getString("unidad");
                double peso_bruto = result.getDouble("peso_bruto");
                double peso_neto = result.getDouble("peso_neto");
                double energia = result.getDouble("energia");
                double proteina = result.getDouble("cantidad_sugerida");
                double lipidos = result.getDouble("lipidos");
                double hco = result.getDouble("hco");
                double fibra = result.getDouble("fibra");
                double vitaminaa = result.getDouble("vitaminaa");
                double acido_ascorbico = result.getDouble("acido_ascorbico");
                double acido_folico = result.getDouble("acido_folico");
                double hierro = result.getDouble("hierro");
                double potasio = result.getDouble("potasio");
                double indice_glicemico = result.getDouble("indice_glicemico");
                double carga_glicemica = result.getDouble("carga_glicemica");
                double azucar = result.getDouble("azucar");
                double sodio = result.getDouble("sodio");
                double calcio = result.getDouble("calcio");
                double selenio = result.getDouble("selenio");
                double fosforo = result.getDouble("fosforo");
                double colesterol = result.getDouble("colesterol");
                
                
                almt = new Alimentos(idalimentos, r_tipo, nombre, cantidad_sugerida, unidad, peso_bruto, peso_neto, energia, proteina, 
                    lipidos, hco, fibra, vitaminaa, acido_ascorbico, acido_folico, hierro, potasio, indice_glicemico, carga_glicemica, azucar, 
                    sodio, calcio, selenio, fosforo, colesterol);
                alimentos.add(almt);
            }
            
            Conexion.close(result);
            Conexion.close(state);
            Conexion.close(conn);
            
            for(Alimentos alimento: alimentos){
                System.out.println("Id alimentos: "+ alimento.getIdalimentos());
                System.out.println("R tipo alimento: "+ alimento.getR_tipo());
                System.out.println("Nombre: "+ alimento.getNombre());
                System.out.println("Cantidad sugerida: "+ alimento.getCantidad_sugerida());
                System.out.println("Unidad: "+ alimento.getUnidad());
                System.out.println("Peso bruto: "+ alimento.getPeso_bruto());
                System.out.println("Peso neto: "+ alimento.getPeso_neto());
                System.out.println("Energia: "+ alimento.getEnergia());
                System.out.println("Proteina: "+ alimento.getProteina());
                System.out.println("Lipidos: "+ alimento.getLipidos());
                System.out.println("HCO: "+ alimento.getHco());
                System.out.println("Fibra: "+ alimento.getFibra());
                System.out.println("Vitamina A: "+ alimento.getVitaminaa());
                System.out.println("Acido ascorbico: "+ alimento.getAcido_ascorbico());
                System.out.println("Acido folico: "+ alimento.getAcido_folico());
                System.out.println("Hierro: "+ alimento.getHierro());
                System.out.println("Potasio: "+ alimento.getPotasio());
                System.out.println("Indice glicemico: "+ alimento.getIndice_glicemico());
                System.out.println("Carga glicemico: "+ alimento.getCarga_glicemica());
                System.out.println("Azucar: "+ alimento.getAzucar());
                System.out.println("Sodio: "+ alimento.getSodio());
                System.out.println("Calcio: "+ alimento.getCalcio());
                System.out.println("Selenio: "+ alimento.getSelenio());
                System.out.println("Fosforo: "+ alimento.getFosforo());
                System.out.println("Colesterol: "+ alimento.getColesterol());
                
                System.out.println(" \n ");
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        return alimentos;
    }
}
