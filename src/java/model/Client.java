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
public class Client {
    private int clientId;
    private String firstname;
    private String lastname;
    private String email;
    private String DOB;
    private String sex;
    private String StreetNo;
    private String StreetName;
    private int townId;
    private String townName;
            

    public Client(int clientId, String firstname, String lastname, String email, String DOB, String sex) {
        this.clientId = clientId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.DOB = DOB;
        this.sex = sex;
    }

    public Client(int clientId, String StreetNo, String StreetName, int townId) {
        this.clientId = clientId;
        this.StreetNo = StreetNo;
        this.StreetName = StreetName;
        this.townId = townId;
    }

    public Client(int clientId, String firstname, String lastname, String email, String DOB, String sex, String StreetNo, String StreetName, String townName) {
        this.clientId = clientId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.DOB = DOB;
        this.sex = sex;
        this.StreetNo = StreetNo;
        this.StreetName = StreetName;
        this.townName = townName;
    }

    
    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
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

    public String getDOB() {
        return DOB;
    }

    public void setDOB(String DOB) {
        this.DOB = DOB;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getStreetNo() {
        return StreetNo;
    }

    public void setStreetNo(String StreetNo) {
        this.StreetNo = StreetNo;
    }

    public String getStreetName() {
        return StreetName;
    }

    public void setStreetName(String StreetName) {
        this.StreetName = StreetName;
    }

    public int getTownId() {
        return townId;
    }

    public void setTownId(int townId) {
        this.townId = townId;
    }

    public String getTownName() {
        return townName;
    }

    public void setTownName(String townName) {
        this.townName = townName;
    }
    
    
}
