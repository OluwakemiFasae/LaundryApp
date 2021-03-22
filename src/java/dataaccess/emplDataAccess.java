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
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;

/**
 *
 * @author OLUWAKEMI
 */
public class emplDataAccess {
    public int addNew(Employee emp){
        int id=0;
        try {
            
            PreparedStatement ps = DBUtils.getPreparedStatementId("insert into employee(firstname,lastname,username,password,email,role,DOB,department,dateEmployed) values(?,?,?,?,?,?,?,?,?)");
            ps.setString(1, emp.getFirstname());
            ps.setString(2, emp.getLastname());
            ps.setString(3, emp.getUsername());
            ps.setString(4, emp.getPassword());
            ps.setString(5, emp.getEmail());
            ps.setString(6, emp.getRole());
            ps.setString(7, emp.getDOB());
            ps.setString(8, emp.getDepartment());
            ps.setString(9, emp.getDateEmployed());
            
            ps.executeUpdate();
            
            ResultSet rs = ps.getGeneratedKeys();
            if(rs.next()){
                    id =rs.getInt(1);
                }
            ps.close();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }
    
    public void addNewAd(Employee empAd){   
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement("insert into empaddress(empId,StreetNo,StreetName,TownId) values(?,?,?,?)");
            ps.setInt(1, empAd.getEmpId());
            ps.setString(2, empAd.getStreetNo());
            ps.setString(3, empAd.getStreetName());
            ps.setInt(4, empAd.getTownId());
            
            ps.executeUpdate();
            ps.close();            
            
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public static List<Employee> getAllEmployees(){
        List<Employee> ls = new LinkedList<>();
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement("select * from employee").executeQuery();
            while(rs.next()){
                Employee emp = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
                ls.add(emp);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    
    public static Boolean emplogin(String username, String password){
        int count=0;
        try {
            
            String sql = "select username,password from employee where  password=? and username =?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            
            ps.setString(2,username);
            ps.setString(1,password);
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                count++;
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(count != 0){  
            return true;
        }
        else return false;
    }
    public static List<Employee> getEmployee(int id){
        List<Employee> ls = new LinkedList<>();
        String sql = "select employee.empId,firstname,lastname,username,email,DOB,role,\n" +
                "department,dateEmployed,StreetNo,StreetName,TownName \n" +
                "from employee,empaddress,town \n" +
                "where employee.empId = "+id+" and employee.empId=empaddress.EmpId and empaddress.townId=town.townId";
        
        try {
            ResultSet rs = DBUtils.getPreparedStatement(sql).executeQuery();
            while(rs.next()){
                Employee emp = new Employee(rs.getInt("empId"),rs.getString("firstname"), rs.getString("lastname"), rs.getString("username"),rs.getString("email"),rs.getString("DOB"), rs.getString("StreetNo"), rs.getString("StreetName"), rs.getString("role"), rs.getString("dateEmployed"), rs.getString("department"), rs.getString("townName"));
                ls.add(emp);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    public void editEmployee(Employee emp){
        String sql = "update employee set firstname=?,lastname=?,username=?,password=?,email=?,role=?,dob=?,department=?,dateEmployed=?" + "where empId=?";
        try {
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setString(1, emp.getFirstname());
            ps.setString(2, emp.getLastname());
            ps.setString(3, emp.getUsername());
            ps.setString(4, emp.getPassword());
            ps.setString(5, emp.getEmail());
            ps.setString(6, emp.getRole());
            ps.setString(7, emp.getDOB());
            ps.setString(8, emp.getDepartment());
            ps.setString(9, emp.getDateEmployed());
            ps.setInt(10, emp.getEmpId());
            
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteEmployee(int empId){
        try {
            String sql = "delete from employee where empId= ?";
            PreparedStatement ps = DBUtils.getPreparedStatement(sql);
            ps.setInt(1, empId);
            
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static List<Employee> searchEmployees(String valToSearch) {
        List<Employee> ls = new LinkedList<>();
        
        try {
            
            ResultSet rs = DBUtils.getPreparedStatement("select * from employee where firstname LIKE '%"+valToSearch+"%' OR lastname LIKE '%"+valToSearch+"%'").executeQuery();
            while(rs.next()){
                Employee emp = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
                ls.add(emp);
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(emplDataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return ls;
    }
    
    
}
