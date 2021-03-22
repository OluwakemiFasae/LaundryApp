<%-- 
    Document   : EditClientHandler
    Created on : 16-Oct-2018, 14:22:04
    Author     : OLUWAKEMI
--%>

<%@page import="dataaccess.clientAccess"%>
<%@page import="model.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("clientId"));
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String DOB = request.getParameter("dob");
            String sex = request.getParameter("sex");
            
//            String StreetNo = request.getParameter("stNo");
//            String StreetName = request.getParameter("stName");
            //int townId = Integer.parseInt(request.getParameter("townId"));
            Client client = new Client(id, firstname, lastname, email, DOB, sex);
//                Employee empAd = new Employee(emp.getEmpId(), StreetNo, StreetName, townId);
            clientAccess da = new clientAccess();
            da.editClient(client);
            out.print("Successfully Updated");
        %>
    </body>
</html>
