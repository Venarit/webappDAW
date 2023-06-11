package Modelos;

/**
 *
 * @author Naomi
 */
public class Perfiles {
    private int r_usuario, idperfil, altura, edad, bmr, tdee, r_actividad, r_objetivo, r_macros;
    private double peso;
    private String nombreperfil, sexo;
    
    public Perfiles(){
    }
    
    //DELETE
    public Perfiles(int idperfil){
        this.idperfil = idperfil;
    }
    
    //INSERTAR
    public Perfiles(int r_usuario, int altura, int edad, int r_actividad, 
            int r_objetivo, int r_macros, double peso, String nombreperfil, String sexo){
        
        this.r_usuario = r_usuario;
        this.altura = altura;
        this.edad = edad;
        this.bmr = bmr;
        this.tdee = tdee;
        this.r_actividad = r_actividad;
        this.r_objetivo = r_objetivo;
        this.r_macros = r_macros;
        this.peso = peso;
        this.nombreperfil = nombreperfil;
        this.sexo = sexo;
    }
    
    //MODIFICAR
    public Perfiles(int idperfil, int r_usuario, int peso, int altura, String sexo, 
            int edad, int bmr, int tdee, int r_actividad, int r_objetivo, 
            int r_macros, String nombreperfil){
        this.idperfil = idperfil;
        this.r_usuario = r_usuario;
        this.peso = peso;
        this.altura = altura;
        this.sexo = sexo;
        this.edad = edad;
        this.bmr = bmr;
        this.tdee = tdee;
        this.r_actividad = r_actividad;
        this.r_objetivo = r_objetivo;
        this.r_macros = r_macros;
        this.nombreperfil = nombreperfil;
    }

    
    public int getIdperfil(){return idperfil;}
    public void setIdperfil(int idperfil){this.idperfil = idperfil;}
    
    public int getR_usuario(){return r_usuario;}
    public void setR_usuario(int r_usuario){this.r_usuario = r_usuario;}
    
    public int getAltura(){return altura;}
    public void setAltura(int altura){this.altura = altura;}
    
    public int getEdad(){return edad;}
    public void setEdad(int edad){this.edad = edad;}
    
    public int getBmr(){return bmr;}
    public void setBmr(int bmr){this.bmr = bmr;}
    
    public int getTdee(){return tdee;}
    public void setTdee(int tdee){this.tdee = tdee;}
    
    public int getR_actividad(){return r_actividad;}
    public void setR_actividad(int r_actividad){this.r_actividad = r_actividad;}
    
    public int getR_objetivo(){return r_objetivo;}
    public void setR_objetivo(int r_objetivo){this.r_objetivo = r_objetivo;}
    
    public int getR_macros(){return r_macros;}
    public void setR_macros(int r_macros){this.r_macros = r_macros;}
    
    public double getPeso(){return peso;}
    public void setPeso(double peso){this.peso = peso;}
    
    public String getNombreperfil(){return nombreperfil;}
    public void setNombreperfil(String nombreperfil){this.nombreperfil = nombreperfil;}
    
    public String getSexo(){return sexo;}
    public void setSexo(String sexo){this.sexo = sexo;}
    
    @Override
    public String toString(){
        return "perfiles{" + "idperfil= " + idperfil + ", r_usuario" + r_usuario +
                "nombreperfil= " + nombreperfil + ", sexo= " + sexo + ", peso= " + peso +
                ", altura= " + altura + ", edad= " + edad + ", bmr= " + bmr + ", tdee= " +
                tdee + ", r_actividad= " + r_actividad + ", r_objetivo= " + r_objetivo +
                ", r_macros= " + r_macros + '}';
    }
}

