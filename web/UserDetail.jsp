<%-- 
    Document   : UserDetail
    Created on : 31-Oct-2018, 08:55:37
    Author     : OLUWAKEMI
--%>

<%-- 
    Document   : UserDetail
    Created on : 31-Oct-2018, 10:41:37
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
       <hr>

    <div class="container">
        <c:forEach var="client" items="${FoundClient}"> 
          <div class="card text-center bg-light mb-3">
            <div class="card-header">
              <h3 >${client.firstname}  ${client.lastname}</h3>
            </div>
            <div class="card-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 "> <img alt="User Pic" src="resources/img/products-01.jpg" class="rounded-circle img-thumbnail"> </div>
                
                
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-borderless">
                    <tbody>
                      
                     <tr>
                        <td><b>Email</b></td>
                        <td><a href="mailto:${client.email}">${client.email}</a></td>
                      </tr>
                      <tr>
                        <td><b>Date of Birth</b></td>
                        <td>${client.DOB}</td>
                      </tr>
                      
                         <tr>
                             
                        <td><b>Gender</b></td>
                        <td>Female</td>
                      </tr>
                        <tr>
                        <td><b>Home Address</b></td>
                        <td>${client.streetNo}, ${client.streetName}, ${client.townName}</td>
                      </tr>
                      
                      
                      <tr>
                        <td>Phone Number</td>
                        <td>+234-703-802-210(Mobile)
                        </td>
                           
                      </tr>
                     
                    </tbody>
                  </table>
                  
                </div>
                
              </div>
                <div bl text-center>
                    <a href="#" class="btn btn-primary">Transaction History</a>
                  <a href="#" class="btn btn-primary">Outstanding Payments</a>
                </div>
            </div>
                 <div class="card-footer">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="edit?clientId=${client.clientId}" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a href="delete?clientId=${client.clientId}" data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            
          </div>
          </c:forEach>
        </div>
                                                      
    <%@ include file = "footer.jsp" %>
