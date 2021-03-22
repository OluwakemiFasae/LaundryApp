<%-- 
    Document   : try
    Created on : 21-Oct-2018, 00:21:44
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
        <link rel="stylesheet" href="resources/css/styles.css"  media="screen, print">
    </head>
    <body>

        <div class="container" >
            <button onclick="window.history.back()" id="bt1" class="btn btn-outline-success my-2 my-sm-0">Go Back</button>
        <div class="jumbotron">
            <h2 class="display-4 text-center">ORDER SUMMARY</h2>
            <p class="display-4">
                <c:forEach var="curOrder" items="${CurrentOrder}">
                <p><b>First Name:</b> ${curOrder.firstname}</p>
                    <p><b>Last Name:</b> ${curOrder.lastname}</p>
                    <p><b>Email Address:</b> ${curOrder.email}</p>
                    <p><b>Date Clothes were Dropped:</b> ${curOrder.dateDropped}</p>
                    <p><b>Expected Date to Pick Clothes:</b> ${curOrder.expectDateofPickUp}</p>
                </c:forEach> 
                <table  class="table table-striped">
                            <thead>
                                <tr>
                                    <td><b>Id</b></td>
                                    <td><b>Product</b></td>
                                    <td><b>Unit Price<b></td>
                                    <td><b>Quantity</b></td>
                                    <td><b>Total</b></td>
                                </tr>
                            </thead>
             
                <c:forEach var="curOrder" items="${CurrentOrderItems}">
                    
                    <tr>
                    <td>#</td>
                    <td>${curOrder.prodName}</td> 
                    <td>${curOrder.unitPrice}</td>
                    <td>${curOrder.quantity}</td>
                    <td>${curOrder.total}</td>
                    
                    </tr>
              </c:forEach>
                    <tr>
                        <td> </td>
                        <td> </td>
                        <td> </td>
                        <td>Sum Total</td>
                        <td> </td>
                    </tr>
                </table>
            </p>
        </div>
            <button href="#" class="btn btn-outline-success my-2 my-sm-0" id="bt2" onClick="printo()">Print Receipt</button>
            </div>
        <script>
            function printo(){
               $("#bt1").remove();
               $("#bt2").remove();
               window.print();
            }
        </script>
    <%@ include file = "footer.jsp" %>
