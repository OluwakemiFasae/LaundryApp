<%-- 
    Document   : AllEmp
    Created on : 25-Aug-2018, 00:02:46
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
            <h2 class="display-4 text-center">EMPLOYEES</h2>
         

        <div class="container">
            <form >    
                <c:choose>
                    <c:when test="${not empty AllEmployee}">
                        <table  class="table table-hover">
                            <thead>
                                <tr>
                                    <td></td>
                                    <td>Name</td>
                                    <td>Last name</td>
                                    <td>Birth date</td>
                                    <td>Role</td>
                                    <td>Department</td>
                                    <td>E-mail</td>
                                    
                                    
                                </tr>
                            </thead>
                            <tbody data-link="row" class="rowlink" >
                            <c:forEach var="employee" items="${AllEmployee}">  
                                <tr>
                                    <td></td>
                                    <td><a href="EmpDetails?empId=${employee.empId}">${employee.firstname}</a></td>
                                    <td>${employee.lastname}</td>
                                    <td>${employee.DOB}</td>
                                    <td>${employee.role}</td>
                                    <td>${employee.department}</td>
                                    <td>${employee.email}</td>
                      
                                
                            </c:forEach>  
                            </tbody>
                        </table>  
                    </c:when>                    
                    <c:otherwise>
                        <br>  </br>           
                        <div class="alert alert-info">
                            No Employees Found
                        </div>
                    </c:otherwise>
                </c:choose>                        
            </form>
        </div>




       <%@ include file = "footer.jsp" %>
