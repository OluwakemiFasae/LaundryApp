<%-- 
    Document   : SearchClient
    Created on : 16-Oct-2018, 13:44:44
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
        
        <div class="container">
        <!--Search Form -->
            
        
            <form >    
                <c:choose>
                    <c:when test="${not empty FoundClient}">
                        <table  class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <td>Id</td>
                                    <td>First Name</td>
                                    <td>Last name</td>
                                    <td>Birth date</td>
                                    <td>Sex</td>
                                    <td>E-mail</td>
                                    
                                </tr>
                            </thead>
                            <tbody data-link="row" class="rowlink" >
                            <c:forEach var="client" items="${FoundClient}">
                                
                                <tr >
                                    <td>${client.clientId}</td>
                                    <td><a href="UserDetail?clientId=${client.clientId}">${client.firstname}</a></td>
                                    <td>${client.lastname}</td>
                                    <td>${client.DOB}</td>
                                    <td>${client.email}</td>
                                    <td>${client.sex}</td>
                                    
                                </tr>
                            </c:forEach>               
                        </table>  
                    </c:when>                    
                    <c:otherwise>
                        <br>  </br>           
                        <div class="alert alert-info">
                            No people found matching your search criteria
                        </div>
                    </c:otherwise>
                </c:choose>  
            </tbody>
            </form>
        </div>                         
         <%@ include file = "footer.jsp" %>
