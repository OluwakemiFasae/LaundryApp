/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataaccess;

import db.DBUtils;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;


/**
 *
 * @author OLUWAKEMI
 */
public class product {
    public static List<Product> getProducts(){
        List<Product> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from product").executeQuery();
            while(rs.next()){
                Product prod = new Product(rs.getInt("pId"),rs.getString("prodName"), rs.getDouble("unitPrice")); 

                ls.add(prod);   
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(product.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
}
