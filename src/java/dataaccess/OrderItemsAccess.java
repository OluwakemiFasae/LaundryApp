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
import model.ItemsRes;
import model.OrderItems;


/**
 *
 * @author OLUWAKEMI
 */
public class OrderItemsAccess {
    public void addNew(OrderItems order){
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into orderitems(orderId,productId,quantity,UnitPrice) values(?,?,?,?)");
            ps.setInt(1, order.getOrderId());
            ps.setInt(2, order.getProductId());
            ps.setInt(3, order.getQuantity());
            ps.setDouble(4, order.getUnitPrice());
            
            
            ps.executeUpdate();
            ps.close();           
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderItemsAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
   
    
    public static List<OrderItems> getOrderItems(int orderId){
        List<OrderItems> ls = new LinkedList<>();
        String sql = "select * from orderitems where orderId = "+orderId;
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                OrderItems order = new OrderItems(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getDouble(5));
                ls.add(order);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderItemsAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public static List<ItemsRes> getOrderDet(int ordId){
        List<ItemsRes> ls = new LinkedList<>();
        String sql = "select prodName,orderitems.unitPrice,quantity,orderitems.unitPrice*quantity as total\n" +
                     "from orderitems,product\n" +
                     "where orderId="+ordId+" and product.pId=orderitems.productId";
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                ItemsRes res = new ItemsRes(rs.getString(1), rs.getDouble(2), rs.getInt(3), rs.getDouble(4));
                ls.add(res);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(OrderItemsAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }

}
