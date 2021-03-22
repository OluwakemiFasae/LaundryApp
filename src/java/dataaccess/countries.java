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
import model.Country;

/**
 *
 * @author OLUWAKEMI
 */
public class countries {
    public static List<Country> getCountries(){
        List<Country> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from country").executeQuery();
            while(rs.next()){
                Country country = new Country(rs.getInt("CountryId"),rs.getString("CountryName")); 
                ls.add(country);   
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(countries.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
}
