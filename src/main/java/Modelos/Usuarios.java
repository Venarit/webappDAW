/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelos;

/**
 *
 * @author Naomi
 */
public class Usuarios {
    private int idusuario;
    private String nombre, apellidop, email, contraseña;
    
    public Usuarios() {
    }
    
    //DELETE
    public Usuarios(int idusuario){
        this.idusuario = idusuario;
    }
    
    //INSERTAR
    public Usuarios(String nombre, String apellidop, String email, String contraseña){
        this.nombre = nombre;
        this.apellidop = apellidop;
        this.email = email;
        this.contraseña = contraseña;
    }
    
    //MODIFICAR
    public Usuarios(int idusuario, String nombre, String apellidop, String email, String contraseña){
        this.idusuario = idusuario;
        this.nombre = nombre;
        this.apellidop = apellidop;
        this.email = email;
        this.contraseña = contraseña;
    }
    
    public int getIdusuario(){
        return idusuario;
    }
    public void setIdusuario(int idusuario){
        this.idusuario = idusuario;
    }
    public String getNombre(){
        return nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    public String getApellidop(){
        return apellidop;
    }
    public void setApellidop(String apellidop){
        this.apellidop = apellidop;
    }
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email = email;
    }
    public String getContraseña(){
        return contraseña;
    }
    public void setContraseña(String contraseña){
        this.contraseña = contraseña;
    }
    
    @Override
    public String toString(){
        return "usuarios{" + "idusuario= " + idusuario + ", nombre= " 
                + nombre + ", apellidop= " + apellidop + ", email= " 
                + email + ", contraseña= " + contraseña + '}';
    }
}
