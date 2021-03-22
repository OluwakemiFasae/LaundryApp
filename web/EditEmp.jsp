<%-- 
    Document   : EditEmp
    Created on : 12-Oct-2018, 17:54:58
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>
        <div class="container">
            <form action="JSP/EditEmpHandler.jsp" method="post">
                <c:choose>
                    <c:when test="${not empty FoundEmployee}">
                        <%--<jsp:include page="/EditEmp" />--%>
                        <c:forEach var="employee" items="${FoundEmployee}">
                            <input type="text" class="form-control" id="firstname" value="${employee.empId}" name="empId" hidden >
                            <div >
                                <label for="firstname">First Name</label>
                                <input type="text" class="form-control" id="firstname" placeholder="First name" name="firstname" value="${employee.firstname}">
                            </div>
                            <div >
                                <label for="lastname">Last Name</label>
                                <input type="text" class="form-control" id="lastname" placeholder="Last name" name="lastname" value="${employee.lastname}">
                            </div>
                            <div >
                                <label for="dob">Date Of Birth</label>
                                <input type="date" class="form-control" id="dob" name="dob" value="${employee.DOB}">
                            </div>

                            <div class="form-group">
                                <label for="emailAd">Email</label>
                                <input type="email" class="form-control" id="emailAd" placeholder="Email Address" name="email" value="${employee.email}">
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="username">Username</label>
                                    <input type="text" class="form-control" id="username" name="username" value="${employee.password}">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="password1">Password</label>
                                    <input type="password" class="form-control" id="password" name="password">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="password2">Confirm Password</label>
                                    <input type="password" class="form-control" id="password2" >
                                </div>
                            </div>
                            <div class="input-group">
                                <div class="form-group col-md-4">
                                    <label for="strNo">Street No</label>
                                    <input type="text" class="form-control" id="strNo" placeholder="House Number" name="strNo">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="strName">Street Name</label>
                                    <input type="text" class="form-control" id="strName" placeholder="Street Name" name="strName">
                                </div>
                            </div>

                            <div class="form-row">

                                <div class="form-group col-md-2">
                                    <label for="inputCountry">Country</label>
                                    <select id="inputCountry" class="form-control" name="country">
                                        <option selected>Choose...</option>
                                        <jsp:include page="/Countries" />
                                        <c:forEach items ="${AllCountries}" var="country">
                                            <option value="${country.countryId}">
                                                ${country.countryName}
                                            </option>
                                        </c:forEach>
                                    </select>

                                </div>

                                <div class="form-group col-md-6">
                                    <label for="inputCity">City/Town</label>
                                    <input type="text" class="form-control" id="inputCity">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputState">State</label>
                                    <select id="inputState" class="form-control">
                                        <option selected>Choose...</option>
                                        <%

                                        %>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="role">Role</label>
                                    <input type="text" class="form-control" id="role" placeholder="Role" name="role" value="${employee.role}">
                                </div>

                                <div class="col">
                                    <label for="department">Department</label>
                                    <input type="text" class="form-control" id="department" placeholder="Department" name="department" value="${employee.dateEmployed}">
                                </div>

                                <div class="col">
                                    <label for="doemp">Date Employed</label>
                                    <input type="date" class="form-control" id="doemp" name="doEmp" value="${employee.department}">
                                </div>
                            </div>
                            <div >
                                &nbsp;
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <br>  </br>           
                        <div class="alert alert-info">
                            No Employees Found
                        </div>
                    </c:otherwise>
                </c:choose>        
                <div class="col cent">
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                </div>
            </form>

        </div>
       <%@ include file = "footer.jsp" %>
