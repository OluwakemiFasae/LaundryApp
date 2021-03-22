<%-- 
    Document   : RegEmpHandler
    Created on : 24-Aug-2018, 22:15:52
    Author     : OLUWAKEMI
--%>

<%@page import="dataaccess.emplDataAccess"%>
<%@page import="model.Employee"%>
<%@page import="utilities.checkUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            emplDataAccess employee = new emplDataAccess();
            
            
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String username = request.getParameter("username");
            
            String initpassword = request.getParameter("password");
            checkUtils util = new checkUtils();
            String password = util.hashPassword(initpassword);
            
            String email = request.getParameter("email");
            String DOB = request.getParameter("dob");
            String role = request.getParameter("role");
            String dateEmployed = request.getParameter("doEmp");
            String department = request.getParameter("department");
            
            String StreetNo = request.getParameter("strNo");
            String StreetName = request.getParameter("strName");
            int townId = Integer.parseInt(request.getParameter("townId"));
            
               if((employee.emplogin(username, password))!= true){
                Employee emp = new Employee(0, firstname, lastname, username, password, email, DOB, role, dateEmployed, department);
                emplDataAccess da = new emplDataAccess();
                int empId = da.addNew(emp);
                
                
                Employee empAd = new Employee(empId, StreetNo, StreetName, townId);
                empAd.setEmpId(empId);
                
                da.addNewAd(empAd);
               }else{
                out.print("Already exists");
                }
            
            response.sendRedirect("http://localhost:8080/Laundry/Employees");
            
            
        %>
    </body>
</html>
