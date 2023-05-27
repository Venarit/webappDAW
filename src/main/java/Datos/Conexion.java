/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;
import java.sql.*;

public class Conexion {
    private static String user = "postgres";
    private static String pswd = "dorito";
    private static String bd = "NutriGuideDB";
    private static String server = "jdbc:postgresql://localhost:5432/" + bd;
    private static String driver = "org.postgresql.Driver";
    
    public static Connection getConnection() {
        try{
            Class.forName(driver);
            return DriverManager.getConnection(server,user,pswd);
        }catch (SQLException ex){
            System.out.println("Error al conectarse a la BD" + server);
            
        }catch (ClassNotFoundException ex){
            System.out.println(ex);
        }
        return null;
    }
    
    public static void close(ResultSet result){
        try {
            result.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static void close(Statement state){
        try {
            state.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static void close(Connection con){
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
