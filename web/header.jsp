<%-- 
    Document   : header
    Created on : 25-Oct-2018, 12:48:45
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${param.title}</title> 
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/jasny-bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/styles.css">
    </head>
    <body>
        

        <div class="container">
            <nav class="navbar navbar-dark bg-dark justify-content-between">
                <a class="navbar-brand" href="UserLoggedIn.jsp">Home</a>
                <a href="TakeOrder.jsp" class="btn btn-outline-success my-2 my-sm-0">Log an Order</a>
                <a href="ClientReg.jsp" class="btn btn-outline-success my-2 my-sm-0">Register a Client</a>
                <a href="AllClients" class="btn btn-outline-success my-2 my-sm-0">View Clients</a>
  <form class="form-inline" action="SearchClient">
    <input class="form-control mr-sm-2" type="search" placeholder="Type the Name of the client" aria-label="Search" name="clientName">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search Client</button>
  </form>
</nav>
        </div>