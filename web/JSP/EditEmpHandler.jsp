<%-- 
    Document   : EditClientHandler
    Created on : 15-Oct-2018, 14:54:17
    Author     : OLUWAKEMI
--%>

<%@page import="java.io.PrintWriter"%>
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
            try{
            int id = Integer.parseInt(request.getParameter("empId"));
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

//            String StreetNo = request.getParameter("stNo");
//            String StreetName = request.getParameter("stName");
            //int townId = Integer.parseInt(request.getParameter("townId"));

            Employee emp = new Employee(id, firstname, lastname, username, password, email, DOB, role, dateEmployed, department);
//                Employee empAd = new Employee(emp.getEmpId(), StreetNo, StreetName, townId);
            emplDataAccess da = new emplDataAccess();
            da.editEmployee(emp);
            out.print("Successfully Updated");
            }catch(Exception e){
                System.err.print(e);
            }
        %>
    </body>
</html>
