package Modelos;

import java.io.Serializable;

/**
 *
 * @author Naomi
 */
public class Objetivos implements Serializable{
    private int idobjetivo, calorias;
    private String nombre, descripcion;
    
    public Objetivos(){
    }
    
    //DELETE
    public Objetivos(int idobjetivo){
        this.idobjetivo = idobjetivo;
    }
    
    //INSERTAR
    public Objetivos(String nombre, String descripcion, int calorias){
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.calorias = calorias;
    }
    
    //MODIFICAR
    public Objetivos(int idobjetivo, String nombre, String descripcion, int calorias){
        this.idobjetivo = idobjetivo;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.calorias = calorias;
    }
    
    public int getIdobjetivo(){return idobjetivo;}
    public void setIdobjetivo(int idobjetivo){this.idobjetivo = idobjetivo;}
    
    public String getNombre(){return nombre;}
    public void setNombre(String nombre){this.nombre = nombre;}
    
    public String getDescripcion(){return descripcion;}
    public void setDescripcion(String descripcion){this.descripcion = descripcion;}
    
    public int getCalorias(){return calorias;}
    public void setCalorias(int calorias){this.calorias = calorias;}
    
    @Override
    public String toString(){
        return "objetivos:{" + "idobjetivo= " + idobjetivo + ", nombre= " + nombre +
                ", descripcion= " + descripcion + ", calorias= " + calorias + '}';
    }
    
}
