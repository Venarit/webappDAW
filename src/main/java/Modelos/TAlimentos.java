package Modelos;

import java.io.Serializable;

/**
 *
 * @author Naomi
 */
public class TAlimentos implements Serializable {
    private int idtipo_alimentos;
    private String nombre;
    
    public TAlimentos(){
        
    }
    
    public TAlimentos(int idtipo_alimentos){
        this.idtipo_alimentos = idtipo_alimentos;
    }
    
    public TAlimentos(String nombre){
        this.nombre = nombre;
    }
    
    public TAlimentos(int idtipo_alimentos, String nombre){
        this.idtipo_alimentos = idtipo_alimentos;
        this.nombre = nombre;
    }
    
    public int getIdtipo_alimentos(){return idtipo_alimentos;}
    public void setIdtipo_alimentos(int idtipo_alimentos){this.idtipo_alimentos = idtipo_alimentos;}
    
    public String getNombre(){return nombre;}
    public void setNombre(String nombre){this.nombre = nombre;}
    
    @Override
    public String toString(){
        return "tipo_alimentos{" + "idtipo_alimentos= " + idtipo_alimentos + ", nombre= " + nombre + '}';
    }
}
