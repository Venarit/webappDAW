package Modelos;

import java.io.Serializable;

/**
 *
 * @author Naomi
 */
public class Macros implements Serializable{
    private int idmacros;
    private String nombre, descripcion;
    private double hco, lipidos, proteina;
    
    public Macros(){
        
    }
    //DELETE
    public Macros(int idmacros){
        this.idmacros = idmacros;
    }
    //INSERTAR
    public Macros(String nombre, String descripcion, double hco, double lipidos, double proteina){
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.hco = hco;
        this.lipidos = lipidos;
        this.proteina = proteina;
    }
    //MODIFICAR
    public Macros(int idmacros, String nombre, String descripcion, double hco, double lipidos, double proteina){
        this.idmacros = idmacros;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.hco = hco;
        this.lipidos = lipidos;
        this.proteina = proteina;
    }
        
    public int getIdmacros(){return idmacros;}
    public void setIdmacros(int idmacros){this.idmacros = idmacros;}
    
    public String getNombre(){return nombre;}
    public void setNombre(String nombre){this.nombre = nombre;}
    
    public String getDescripcion(){return descripcion;}
    public void setDescripcion(String descripcion){this.descripcion = descripcion;}
    
    public double getHco(){return hco;}
    public void setHco(double factor){this.hco = hco;}
    
    public double getLipidos(){return lipidos;}
    public void setLipidos(double factor){this.lipidos = lipidos;}
    
    public double getProteina(){return proteina;}
    public void setProteina(double factor){this.proteina = proteina;}
    
       
    @Override
    public String toString(){
        return "macros{" + "idmacros= " + idmacros + ", nombre= " + nombre +
                ", descripcion= " + descripcion + ", hco= " + hco + 
                ", lipidos= " + lipidos + ", proteina= " + proteina +'}';
    }
}
