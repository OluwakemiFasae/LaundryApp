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
import model.State;
import model.Town;

/**
 *
 * @author OLUWAKEMI
 */
public class towns {
    public static List<Town> getTowns(){
        List<Town> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from town").executeQuery();
            while(rs.next()){
                Town town = new Town(rs.getInt("townId"),rs.getString("townName"), rs.getInt("StateId")); 
                ls.add(town);   
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(states.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
}
