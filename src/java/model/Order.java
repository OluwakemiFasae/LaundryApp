/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author OLUWAKEMI
 */
public class Order {
    int orderId;
    int clientId;
    String dateDropped;
    String expectDateofPickUp;
    String paidStatus;
    String orderStatus;
    String actualPickUpDate;

    public Order(int orderId,int clientId,String dateDropped, String expectDateofPickUp, String paidStatus, String orderStatus) {
        this.orderId = orderId;
        this.clientId = clientId;
        this.dateDropped = dateDropped;
        this.expectDateofPickUp = expectDateofPickUp;
        this.paidStatus = paidStatus;
        this.orderStatus = orderStatus;
    }

    public Order(int orderId,String paidStatus, String orderStatus, String actualPickUpDate) {
        this.orderId = orderId;
        this.paidStatus = paidStatus;
        this.orderStatus = orderStatus;
        this.actualPickUpDate = actualPickUpDate;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setId(int orderId) {
        this.orderId = orderId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }


    public String getDateDropped() {
        return dateDropped;
    }

    public void setDateDropped(String dateDropped) {
        this.dateDropped = dateDropped;
    }

    public String getExpectDateofPickUp() {
        return expectDateofPickUp;
    }

    public void setExpectDateofPickUp(String expectDateofPickUp) {
        this.expectDateofPickUp = expectDateofPickUp;
    }

    public String getPaidStatus() {
        return paidStatus;
    }

    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getActualPickUpDate() {
        return actualPickUpDate;
    }

    public void setActualPickUpDate(String actualPickUpDate) {
        this.actualPickUpDate = actualPickUpDate;
    }
    
    
    
    
}
