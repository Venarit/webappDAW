package Modelos;

import java.io.Serializable;

/**
 *
 * @author Naomi
 */
public class Actividadm implements Serializable{
    private int idactividad;
    private double factor;
    private String nombre, descripcion;
    
    public Actividadm(){
    }
    
    //DELETE
    public Actividadm(int idactvidad){
        this.idactividad = idactividad;
    }
    
    //INSERTAR
    public Actividadm(String nombre, double factor, String descripcion){
        this.nombre = nombre;
        this.factor = factor;
        this.descripcion = descripcion;
    }
    
    //MODIFICAR
    public Actividadm(int idactividad, String nombre, double factor, String descripcion){
        this.idactividad = idactividad;
        this.nombre = nombre;
        this.factor = factor;
        this.descripcion = descripcion;
    }
    
    public int getIdactividad(){return idactividad;}
    public void setIdactividad(int idactividad){this.idactividad = idactividad;}
    
    public String getNombre(){return nombre;}
    public void setNombre(String nombre){this.nombre = nombre;}
    
    public double getFactor(){return factor;}
    public void setFactor(double factor){this.factor = factor;}
    
    public String getDescripcion(){return descripcion;}
    public void setDescripcion(String descripcion){this.descripcion = descripcion;}
    
    @Override
    public String toString(){
        return "actividadm{" + "idactividad= " + idactividad + ", nombre= " + nombre +
                ", factor= " + factor + ", descripcion= " + descripcion + '}';
    }
    
}
