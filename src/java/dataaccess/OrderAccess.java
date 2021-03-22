/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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
import model.Order;
import model.orderRes;


/**
 *
 * @author OLUWAKEMI
 */
public class OrderAccess {
    public static int addNew(Order order){
        int id=0;
        try {
                String sql = "insert into ordertab(clientId,dateDropped,expectDateofPickUp,paidStatus,orderStatus)values(?,?,?,?,?)";
                PreparedStatement ps = DBUtils.getPreparedStatementId(sql);
                
                ps.setInt(1, order.getClientId());
                ps.setString(2, order.getDateDropped());
                ps.setString(3, order.getExpectDateofPickUp());
                ps.setString(4, order.getPaidStatus());
                ps.setString(5, order.getOrderStatus());

                ps.executeUpdate();
               
                ResultSet rs = ps.getGeneratedKeys();
                
                if(rs.next()){
                    id =rs.getInt(1);
                }
                
                ps.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }
    
    public static List<Order> getAllOrders(){
        List<Order> ls = new LinkedList<>();
        
        try {
             PreparedStatement ps = DBUtils.getPreparedStatement("select * from ordertab order by dateDropped");
             
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Order order = new Order(rs.getInt(1),rs.getInt(2),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(order);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<Order> getOrder(int id){
        List<Order> ls = new LinkedList<>();
        String sql = "select * from order,orderItems where order.orderId = "+id+"and orderItems.orderId= "+id;
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Order order = new Order(rs.getInt(1),rs.getInt(2),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(order);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<Order> getOrder(String date){
        List<Order> ls = new LinkedList<>();
        String sql = "select * from order where dateDropped= "+date;
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Order order = new Order(rs.getInt(1),rs.getInt(2),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                ls.add(order);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<orderRes> getOrderQueue(){
        List<orderRes> ls = new LinkedList<>();
        String sql = "select orderId,firstname,lastname,email,dateDropped,ExpectDateofPickUp,orderStatus,paidStatus from client,ordertab "
                + "where client.clientId = ordertab.clientId and orderStatus = \"On Queue\"";
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                orderRes res = new orderRes(rs.getInt("orderId"),rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("dateDropped"), rs.getString("ExpectDateofPickUp"),rs.getString("orderStatus"),rs.getString("paidStatus"));
                ls.add(res);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<orderRes> getPaidOrder(){
        List<orderRes> ls = new LinkedList<>();
        String sql = "select orderId,firstname,lastname,email,dateDropped,ExpectDateofPickUp,orderStatus,paidStatus from client,ordertab "
                + "where client.clientId = ordertab.clientId and paidStatus = false";
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                orderRes res = new orderRes(rs.getInt("orderId"),rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("dateDropped"), rs.getString("ExpectDateofPickUp"),rs.getString("orderStatus"),rs.getString("paidStatus"));
                ls.add(res);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<orderRes> getProcessingOrder(){
        List<orderRes> ls = new LinkedList<>();
        String sql = "select orderId,firstname,lastname,email,dateDropped,ExpectDateofPickUp,orderStatus,paidStatus from client,ordertab "
                + "where client.clientId = ordertab.clientId and orderStatus = \"processing\"";
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                orderRes res = new orderRes(rs.getInt("orderId"),rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("dateDropped"), rs.getString("ExpectDateofPickUp"),rs.getString("orderStatus"),rs.getString("paidStatus"));
                ls.add(res);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<orderRes> getProcessedOrders(){
        List<orderRes> ls = new LinkedList<>();
        String sql = "select orderId,firstname,lastname,email,dateDropped,ExpectDateofPickUp,orderStatus,paidStatus from client,ordertab "
                + "where client.clientId = ordertab.clientId and orderStatus = \"processed\"";
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                orderRes res = new orderRes(rs.getInt("orderId"),rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("dateDropped"), rs.getString("ExpectDateofPickUp"),rs.getString("orderStatus"),rs.getString("paidStatus"));
                ls.add(res);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<orderRes> getOrderDet(int ordId){
        List<orderRes> ls = new LinkedList<>();
        String sql = "select distinct ordertab.orderId,firstname,lastname,email,dateDropped,ExpectDateofPickUp,orderStatus,paidStatus\n" +
        "from client,ordertab,orderitems\n" +
        "where client.clientId = ordertab.clientId and ordertab.orderId="+ordId+" and orderitems.orderId="+ordId;
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                orderRes res = new orderRes(rs.getInt("orderId"),rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("dateDropped"), rs.getString("ExpectDateofPickUp"),rs.getString("orderStatus"),rs.getString("paidStatus"));
                ls.add(res);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    
    public void editOrder(Order order){
        String sql = "update ordertab set paidStatus=?,actualPickUpDate=?,orderStatus=? where orderId=?";
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setString(1, order.getPaidStatus());
            ps.setString(2, order.getActualPickUpDate());
            ps.setString(3, order.getOrderStatus());
            ps.setInt(4, order.getOrderId());
            
            ps.executeUpdate();
                       
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteOrder(int orderId){
        try {
            String sql = "delete from order where orderId= ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, orderId);
            
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<orderRes> searchOrders(String valToSearch) {
        List<orderRes> ls = new LinkedList<>();
        
        try {
            String sql = "select orderId,firstname,lastname,email,dateDropped,ExpectDateofPickUp,orderStatus,paidStatus\n" +
        "from client,ordertab\n" +
        "where dateDropped LIKE '%"+valToSearch+"%' and ordertab.clientId = client.clientId";
            //firstname LIKE '%"+valToSearch+"%' OR lastname LIKE '%"+valToSearch+"%' OR 
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
               orderRes res = new orderRes(rs.getInt("orderId"),rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("dateDropped"), rs.getString("ExpectDateofPickUp"),rs.getString("orderStatus"),rs.getString("paidStatus"));
                ls.add(res);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<orderRes> searchOrdersN(String valToSearch) {
        List<orderRes> ls = new LinkedList<>();
        
        try {
            String sql = "select orderId,firstname,lastname,email,dateDropped,ExpectDateofPickUp,orderStatus,paidStatus\n" +
        "from client,ordertab\n" +
        "where ordertab.clientId = client.clientId AND firstname LIKE '%"+valToSearch+"%' OR "
                    + "ordertab.clientId = client.clientId AND lastname LIKE '%"+valToSearch+"%'";
            //firstname LIKE '%"+valToSearch+"%' OR lastname LIKE '%"+valToSearch+"%' OR 
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
               orderRes res = new orderRes(rs.getInt("orderId"),rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("dateDropped"), rs.getString("ExpectDateofPickUp"),rs.getString("orderStatus"),rs.getString("paidStatus"));
                ls.add(res);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
}
