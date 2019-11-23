/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MedicalStudy;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Minal Devanand Vaity
 */
public class DBConnection {
    
    static Connection connection=null;
    static final String USER = "db510", PASS = "510";
    public static Connection getConnection(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
	    String DB_URL = "jdbc:mysql://www.papademas.net:3307/510labs?autoReconnect=true&useSSL=false";
            connection=DriverManager.getConnection(DB_URL, USER, PASS);
            System.out.println("Connected");
            
        } catch (Exception e) {
        }
        
        return connection;
    }
    
    public static void main(String[] args) {
        getConnection();
    }
}
