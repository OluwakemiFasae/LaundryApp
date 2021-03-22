<%-- 
    Document   : searchOrderName
    Created on : 30-Oct-2018, 12:29:09
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
        <div class="container">
        <!--Search Form -->
            <form action="SearchOrderN" method="get" id="seachOrder" role="form" >
                
                <div class="form-group col-xs-5">
                    <input type="text" name="fname" id="searchOrder" class="form-control" 
                           placeholder="first name or last name"/>                    
                </div>
              
                <button type="submit" class="btn btn-info">
                    <span class="glyphicon glyphicon-search"></span> Search
                </button>
                <br></br>
                <br></br>
            </form>
        
            <form >    
                <c:choose>
                    <c:when test="${not empty FoundOrder}">
                        <table  class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <td>Id</td>
                                    <td>First name</td>
                                    <td>Last name</td>
                                    <td>Email</td>
                                    <td>Date Dropped</td>
                                    <td>Expect Date of Pick Up</td>
                                    <td>Status</td>
                                    
                                    
                                </tr>
                            </thead>
                           <tbody data-link="row" class="rowlink">
                            <c:forEach var="ord" items="${FoundOrder}">
                                
                                <tr >
                                    <td>#</td>
                                    <td><a href="OrderDetail?orderId=${ord.orderId}">${ord.firstname}</td>
                                    <td>${ord.lastname}</td>
                                    <td>${ord.email}</td>
                                    <td>${ord.dateDropped}</td>
                                    <td>${ord.expectDateofPickUp}</td>
                                    <td>${ord.orderStatus}</td>
                                </tr>
                            </c:forEach>   
                                </tbody>          
                        </table>  
                    </c:when>                    
                    <c:otherwise>
                        <br>  </br>           
                        <div class="alert alert-info">
                            No order found matching your search criteria
                        </div>
                    </c:otherwise>
                </c:choose>                        
            </form>
        </div>                         
    <%@ include file = "footer.jsp" %>
