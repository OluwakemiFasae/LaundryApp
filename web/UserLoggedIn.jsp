<%-- 
    Document   : UserLoggedIn
    Created on : 11-Oct-2018, 11:54:04
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
<!--            <h1>
                WELCOME <%= request.getParameter("username")%>
            </h1>-->
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

    </div>
</div>
<%@ include file = "footer.jsp" %>
