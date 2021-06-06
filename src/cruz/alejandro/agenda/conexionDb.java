/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cruz.alejandro.agenda;

import java.sql.*;

/**
 *
 * @author EntornoVM
 */
public class conexionDb {

    /**
     * @param args the command line arguments
     */

    private Connection con;

    public Connection getCon() {
        return con;
    }
    
    public conexionDb (){
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:33066/db_agenda?serverTimezone=UTC","root","root");
            System.out.println("Conexion establecida");
        } catch (Exception e) {
            
            System.err.println("Error " + e);
        }
    }
}
