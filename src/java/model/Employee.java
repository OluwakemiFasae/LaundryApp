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
public class Employee {
    private int empId;
    private String firstname;
    private String lastname;
    private String username;
    private String password;
    private String email;
    private String DOB;
    private String StreetNo;
    private String StreetName;
    private int townId;
    private String role;
    private String dateEmployed;
    private String department;
    private String townName;

    public Employee() {
    }

    public Employee(int empId, String firstname, String lastname, String username, String password, String email, String DOB, 
            String role, String dateEmployed, String department) {
        this.empId = empId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.password = password;
        this.email = email;
        this.DOB = DOB;
        this.role = role;
        this.dateEmployed = dateEmployed;
        this.department = department;
    }

    public Employee(int empId, String StreetNo, String StreetName, int townId) {
        this.StreetNo = StreetNo;
        this.StreetName = StreetName;
        this.townId = townId;
    }

    public Employee(int empId,String firstname, String lastname, String username, String email, String DOB, String StreetNo, String StreetName, String role, String dateEmployed, String department, String townName) {
        this.empId = empId;
        this.firstname = firstname;
        this.lastname = lastname;
        this.username = username;
        this.email = email;
        this.DOB = DOB;
        this.StreetNo = StreetNo;
        this.StreetName = StreetName;
        this.role = role;
        this.dateEmployed = dateEmployed;
        this.department = department;
        this.townName = townName;
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

    
    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getDateEmployed() {
        return dateEmployed;
    }

    public void setDateEmployed(String dateEmployed) {
        this.dateEmployed = dateEmployed;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getTownName() {
        return townName;
    }

    public void setTownName(String townName) {
        this.townName = townName;
    }
}
