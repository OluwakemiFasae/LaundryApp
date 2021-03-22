<%-- 
    Document   : RegClientHandler
    Created on : 24-Aug-2018, 22:11:40
    Author     : OLUWAKEMI
--%>

<%@page import="model.Client"%>
<%@page import="dataaccess.clientAccess"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            clientAccess client = new clientAccess();
            
            
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            
            String email = request.getParameter("email");
            String DOB = request.getParameter("dob");
            String sex = request.getParameter("sex");
            
            String StreetNo = request.getParameter("strNo");
            String StreetName = request.getParameter("strName");
            int townId = Integer.parseInt(request.getParameter("townId"));
            
            if((client.checkClient(email))!= true){
                Client newClient = new Client(0, firstname, lastname, email, DOB, sex);
                clientAccess da = new clientAccess();
                int clientId = da.addNew(newClient);
               System.out.println(clientId);
                
                Client clAd = new Client(clientId, StreetNo, StreetName, townId);
                clAd.setClientId(clientId);
                System.out.println(clAd.getClientId());
                da.addNewAd(clAd);
            }else{
                System.out.println("Already exists");
            } 
           
            response.sendRedirect("http://localhost:8080/Laundry/AllClients");
            
            
        %>
    </body>
</html>
