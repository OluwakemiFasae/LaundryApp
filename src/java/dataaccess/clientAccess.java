/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this tclientlate file, choose Tools | Tclientlates
 * and open the tclientlate in the editor.
 */
package dataaccess;

import db.DBUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Client;
import model.Client;

/**
 *
 * @author OLUWAKEMI
 */
public class clientAccess {
    public int addNew(Client client){
        int id=0;
        try {
            PreparedStatement ps = DBUtils.getPreparedStatementId("insert into client(firstname,lastname,email,DOB,sex) values(?,?,?,?,?)");
            ps.setString(1, client.getFirstname());
            ps.setString(2, client.getLastname());
            ps.setString(3, client.getEmail());
            ps.setString(4, client.getDOB());
            ps.setString(5, client.getSex());
            
            
            ps.executeUpdate();
            
            ResultSet rs = ps.getGeneratedKeys();
            
            while(rs.next()){
                id = rs.getInt(1);
            }
            ps.close();
//            
//            ps = DBUtils.getPreparedStatement("insert into clientaddress(clientId,StreetNo,StreetName,TownId) values(?,?,?,?)");
//            ps.setInt(1, client.getEmpId());
//            ps.setString(2, clientAd.getStreetNo());
//            ps.setString(3, clientAd.getStreetName());
//            ps.setInt(4, clientAd.getTownId());
//            
//            ps.executeUpdate();
//            ps.close();
//            
            
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(clientAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }
    
    public void addNewAd(Client clientAd){   
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into clientad(clientId,StreetNo,StreetName,TownId) values(?,?,?,?)");
            ps.setInt(1, clientAd.getClientId());
            ps.setString(2, clientAd.getStreetNo());
            ps.setString(3, clientAd.getStreetName());
            ps.setInt(4, clientAd.getTownId());
            
            ps.executeUpdate();
            ps.close();            
            
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public static List<Client> getAllClients(){
        List<Client> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from client").executeQuery();
            while(rs.next()){
                Client client = new Client(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                ls.add(client);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(clientAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<Client> getClient(int id){
        List<Client> ls = new LinkedList<>();
        String sql = "select client.clientId,firstname,lastname,email,DOB,\n" +
                "sex,StreetNo,StreetName,townName \n" +
                "from client,clientad,town \n" +
                "where client.clientId = "+id+" and client.clientId=clientad.clientId and clientad.townId=town.townId";
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Client client = new Client(rs.getInt("clientId"), rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("DOB"), rs.getString("sex"),rs.getString("StreetName"),rs.getString("StreetNo"),rs.getString("townName"));
                ls.add(client);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(clientAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static Boolean checkClient(String email){
        List<Client> ls = new LinkedList<>();
        
       
        
        try {
            String sql = "select * from client where email = ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setString(1, email);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Client client = new Client(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                ls.add(client);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(clientAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(ls.isEmpty()){
            return false;
        }else{
            return true;
        }
        
    }
    
    public void editClient(Client client){
        String sql = "update client set firstname=?,lastname=?,email=?,dob=?,sex=?" + "where clientId=?";
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setString(1, client.getFirstname());
            ps.setString(2, client.getLastname());
            ps.setString(3, client.getEmail());
            ps.setString(4, client.getDOB());
            ps.setString(5, client.getSex());
            ps.setInt(6, client.getClientId());
            
            ps.executeUpdate();
                       
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(clientAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteClient(int clientId){
        try {
            String sql = "delete from client where clientId= ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, clientId);
            
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(clientAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Client> searchClients(String valToSearch) {
        List<Client> ls = new LinkedList<>();
        
        try {
            
            ResultSet rs = DBUtils.getPreparedStatement("select * from client where firstname LIKE '%"+valToSearch+"%' OR lastname LIKE '%"+valToSearch+"%'").executeQuery();
            while(rs.next()){
                Client client = new Client(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
                ls.add(client);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(clientAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
}
