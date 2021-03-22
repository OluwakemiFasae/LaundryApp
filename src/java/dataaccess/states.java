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

/**
 *
 * @author OLUWAKEMI
 */
public class states {
    public static List<State> getStates(){
        List<State> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from state").executeQuery();
            while(rs.next()){
                State state = new State(rs.getInt("StateId"),rs.getString("stateName"), rs.getInt("Country")); 
                ls.add(state);   
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(states.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
}
