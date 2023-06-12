package Modelos;

import java.io.Serializable;

/**
 *
 * @author Naomi
 */
public class Alimentos implements Serializable{
    
    private int idalimentos, r_tipo;
    private String nombre, unidad;
    private double cantidad_sugerida, peso_bruto, peso_neto, energia, proteina, lipidos, hco, fibra, vitaminaa, acido_ascorbico,
            acido_folico, hierro, potasio, indice_glicemico, carga_glicemica, azucar, sodio, calcio, selenio, fosforo,colesterol;

    
    
    public Alimentos(){
        
    }
    
    public Alimentos(int idalimentos){
        this.idalimentos = idalimentos;
    }
    
    public Alimentos(int r_tipo, String nombre, double cantidad_sugerida, String unidad, double peso_bruto, double peso_neto, double energia, double proteina,
            double lipidos, double hco, double fibra, double vitaminaa, double acido_ascorbico, double acido_folico, double hierro, double potasio, 
            double indice_glicemico, double carga_glicemica, double azucar, double sodio, double calcio, double selenio, double fosforo, double colesterol){
        this.r_tipo = r_tipo;
        this.nombre = nombre;
        this.unidad = unidad;
        this.cantidad_sugerida = cantidad_sugerida;
        this.peso_bruto = peso_bruto;
        this.peso_neto = peso_neto;
        this.energia = energia;
        this.proteina = proteina;
        this.lipidos = lipidos;
        this.hco = hco;
        this.fibra = fibra;
        this.vitaminaa = vitaminaa;
        this.acido_ascorbico = acido_ascorbico;
        this.acido_folico = acido_folico;
        this.hierro = hierro;
        this.potasio = potasio;
        this.indice_glicemico = indice_glicemico;
        this.carga_glicemica = carga_glicemica;
        this.azucar = azucar;
        this.sodio = sodio;
        this.calcio = calcio;
        this.selenio = selenio;
        this.fosforo = fosforo;
        this.colesterol = colesterol;
    }
    
    public Alimentos(int idalimentos, int r_tipo, String nombre, double cantidad_sugerida, String unidad, double peso_bruto, double peso_neto, double energia, double proteina,
            double lipidos, double hco, double fibra, double vitaminaa, double acido_ascorbico, double acido_folico, double hierro, double potasio, 
            double indice_glicemico, double carga_glicemica, double azucar, double sodio, double calcio, double selenio, double fosforo, double colesterol){
        this.idalimentos = idalimentos;
        this.r_tipo = r_tipo;
        this.idalimentos = idalimentos;
        this.nombre = nombre;
        this.unidad = unidad;
        this.cantidad_sugerida = cantidad_sugerida;
        this.peso_bruto = peso_bruto;
        this.peso_neto = peso_neto;
        this.energia = energia;
        this.proteina = proteina;
        this.lipidos = lipidos;
        this.hco = hco;
        this.fibra = fibra;
        this.vitaminaa = vitaminaa;
        this.acido_ascorbico = acido_ascorbico;
        this.acido_folico = acido_folico;
        this.hierro = hierro;
        this.potasio = potasio;
        this.indice_glicemico = indice_glicemico;
        this.carga_glicemica = carga_glicemica;
        this.azucar = azucar;
        this.sodio = sodio;
        this.calcio = calcio;
        this.selenio = selenio;
        this.fosforo = fosforo;
        this.colesterol = colesterol;
    }
    
    public int getIdalimentos() {
        return idalimentos;
    }
    public void setIdalimentos(int idalimentos) {
        this.idalimentos = idalimentos;
    }

    public int getR_tipo() {
        return r_tipo;
    }
    public void setR_tipo(int r_tipo) {
        this.r_tipo = r_tipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUnidad() {
        return unidad;
    }

    public void setUnidad(String unidad) {
        this.unidad = unidad;
    }

    public double getCantidad_sugerida() {
        return cantidad_sugerida;
    }

    public void setCantidad_sugerida(double cantidad_sugerida) {
        this.cantidad_sugerida = cantidad_sugerida;
    }

    public double getPeso_bruto() {
        return peso_bruto;
    }

    public void setPeso_bruto(double peso_bruto) {
        this.peso_bruto = peso_bruto;
    }

    public double getPeso_neto() {
        return peso_neto;
    }

    public void setPeso_neto(double peso_neto) {
        this.peso_neto = peso_neto;
    }

    public double getEnergia() {
        return energia;
    }

    public void setEnergia(double energia) {
        this.energia = energia;
    }

    public double getProteina() {
        return proteina;
    }

    public void setProteina(double proteina) {
        this.proteina = proteina;
    }

    public double getLipidos() {
        return lipidos;
    }

    public void setLipidos(double lipidos) {
        this.lipidos = lipidos;
    }

    public double getHco() {
        return hco;
    }

    public void setHco(double hco) {
        this.hco = hco;
    }

    public double getFibra() {
        return fibra;
    }

    public void setFibra(double fibra) {
        this.fibra = fibra;
    }

    public double getVitaminaa() {
        return vitaminaa;
    }

    public void setVitaminaa(double vitaminaa) {
        this.vitaminaa = vitaminaa;
    }

    public double getAcido_ascorbico() {
        return acido_ascorbico;
    }

    public void setAcido_ascorbico(double acido_ascorbico) {
        this.acido_ascorbico = acido_ascorbico;
    }

    public double getAcido_folico() {
        return acido_folico;
    }

    public void setAcido_folico(double acido_folico) {
        this.acido_folico = acido_folico;
    }

    public double getHierro() {
        return hierro;
    }

    public void setHierro(double hierro) {
        this.hierro = hierro;
    }

    public double getPotasio() {
        return potasio;
    }

    public void setPotasio(double potasio) {
        this.potasio = potasio;
    }

    public double getIndice_glicemico() {
        return indice_glicemico;
    }

    public void setIndice_glicemico(double indice_glicemico) {
        this.indice_glicemico = indice_glicemico;
    }

    public double getCarga_glicemica() {
        return carga_glicemica;
    }

    public void setCarga_glicemica(double carga_glicemica) {
        this.carga_glicemica = carga_glicemica;
    }

    public double getAzucar() {
        return azucar;
    }

    public void setAzucar(double azucar) {
        this.azucar = azucar;
    }

    public double getSodio() {
        return sodio;
    }

    public void setSodio(double sodio) {
        this.sodio = sodio;
    }

    public double getCalcio() {
        return calcio;
    }

    public void setCalcio(double calcio) {
        this.calcio = calcio;
    }

    public double getSelenio() {
        return selenio;
    }

    public void setSelenio(double selenio) {
        this.selenio = selenio;
    }

    public double getFosforo() {
        return fosforo;
    }

    public void setFosforo(double fosforo) {
        this.fosforo = fosforo;
    }

    public double getColesterol() {
        return colesterol;
    }

    public void setColesterol(double colesterol) {
        this.colesterol = colesterol;
    }
    
}
