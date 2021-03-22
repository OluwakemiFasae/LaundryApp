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
public class orderRes {
    private int orderId;
    private String firstname,lastname,email,dateDropped,ExpectDateofPickUp,orderStatus,paidStatus;

    public orderRes(int orderId,String firstname, String lastname, String email, String dateDropped, String ExpectDateofPickUp,String status,String paidStatus) {
        this.orderId = orderId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.dateDropped = dateDropped;
        this.ExpectDateofPickUp = ExpectDateofPickUp;
        this.orderStatus = status;
        this.paidStatus = paidStatus;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDateDropped() {
        return dateDropped;
    }

    public void setDateDropped(String dateDropped) {
        this.dateDropped = dateDropped;
    }

    public String getExpectDateofPickUp() {
        return ExpectDateofPickUp;
    }

    public void setExpectDateofPickUp(String ExpectDateofPickUp) {
        this.ExpectDateofPickUp = ExpectDateofPickUp;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setStatus(String status) {
        this.orderStatus = status;
    }

    public String getPaidStatus() {
        return paidStatus;
    }

    public void setPaidStatus(String paidStatus) {
        this.paidStatus = paidStatus;
    }
    
}
