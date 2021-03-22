<%-- 
    Document   : adminPage
    Created on : 24-Aug-2018, 17:46:46
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>

<% 
    String message = null;
    String sessionID = null;
    
    Cookie [] cookies = request.getCookies();
    
    if(cookies!=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("message")) message = cookie.getValue();
            if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();

        }
    }
%>
        <div class="container">
        
    <div class="row cardy">
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">View Orders on Queue</h5>
                    <p class="card-text">Get a list of orders that are still on queue and have not been touched.</p>
                    <input name="queue" hidden="true">
                    <a href="OrdersOnQueue" class="btn btn-outline-success my-2 my-sm-0">View All</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">View Orders being processed</h5>
                    <p class="card-text">Get a list of orders that are currently being processed.</p>
                    <a href="ProcessingOrders" class="btn btn-outline-success my-2 my-sm-0">View All</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">View Processed Orders</h5>
                    <p class="card-text">View all orders that have been completed and ready for pickup.</p>
                    <a href="ProcessedOrders" class="btn btn-outline-success my-2 my-sm-0">View All</a>
                </div>
            </div>
        </div>

    </div>
    
    <div class="row cardy">
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Search for Order</h5>
                    <p class="card-text">Search for an order with the date it was brought.</p>
                    <a href="searchOrderDate.jsp" class="btn btn-outline-success my-2 my-sm-0">Search</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Search Orders</h5>
                    <p class="card-text">Search for an order with the customer's first or last name</p>
                    <a href="searchOrderName.jsp" class="btn btn-outline-success my-2 my-sm-0">Search</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Orders not Paid</h5>
                    <p class="card-text">View orders with outstanding payments</p>
                    <a href="NotPaidOrders" class="btn btn-outline-success my-2 my-sm-0">View All</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">All Employees</h5>
                    <p class="card-text">View all your employees,their information and their roles</p>
                    <a href="Employees" class="btn btn-outline-success my-2 my-sm-0">View All</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Add a new Employee</h5>
                    <p class="card-text">Register a new employee with a unique email address,username and password</p>
                    <a href="EmpReg.jsp" class="btn btn-outline-success my-2 my-sm-0">Register Employee</a>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Search for Employee</h5>
                    <p class="card-text">Search for an employee and view employee details</p>
                    <a href="SearchEmp.jsp" class="btn btn-outline-success my-2 my-sm-0">Search Employee</a>
                </div>
            </div>
        </div>

    </div>

       
    
        <%@ include file = "footer.jsp" %>
