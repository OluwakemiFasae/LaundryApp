/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;


public class DBUtils {
    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps = null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/laundry","root","");
            ps = con.prepareStatement(sql);
        
        return ps;
    }
    
    public static PreparedStatement getPreparedStatementId(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps = null;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/laundry","root","");
            ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        
        return ps;
    }
    
//    //check connections
//    public static void main(String[] args) throws ClassNotFoundException, SQLException {
//        getPreparedStatement("Select * from News");
//    }
}

