<%-- 
    Document   : SearchEmp
    Created on : 12-Oct-2018, 16:47:25
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
        
        <div class="container">
        <!--Search Form -->
            <form action="SearchEmpl" method="get" id="seachEmployeeForm" role="form" >
                
                <div class="form-group col-xs-5">
                    <input type="text" name="employeeName" id="employeeName" class="form-control" required="true" 
                           placeholder="Type the First Name or Last Name of the employee"/>                    
                </div>
                <button type="submit" class="btn btn-info">
                    <span class="glyphicon glyphicon-search"></span> Search
                </button>
                <br></br>
                <br></br>
            </form>
        
            <form >    
                <c:choose>
                    <c:when test="${not empty FoundEmployee}">
                        <table  class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <td>Id</td>
                                    <td>Name</td>
                                    <td>Last name</td>
                                    <td>Birth date</td>
                                    <td>Role</td>
                                    <td>Department</td>
                                    <td>E-mail</td>
                                    
                                </tr>
                            </thead>
                            <tbody data-link="row" class="rowlink" >
                            <c:forEach var="employee" items="${FoundEmployee}">
                                
                                <tr>
                                    <td>${employee.empId}</td>
                                    <td><a href="EmpDetails?empId=${employee.empId}"> ${employee.firstname}</a></td>
                                    <td>${employee.lastname}</td>
                                    <td>${employee.DOB}</td>
                                    <td>${employee.role}</td>
                                    <td>${employee.department}</td>
                                    <td>${employee.email}</td>
                                    <td>${employee.dateEmployed}</td>
                                    
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