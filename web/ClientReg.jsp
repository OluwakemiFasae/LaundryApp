<%-- 
    Document   : ClientReg
    Created on : 16-Oct-2018, 11:02:45
    Author     : OLUWAKEMI
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file = "header.jsp" %>
        <div class="formbody">


            <h2 class="display-4 text-center">REGISTER CLIENT</h2>
            &nbsp;
            &nbsp;
            <form action="JSP/RegClientHandler.jsp" method="post">
            <!--<form action="">-->
                <div >
                    <label for="firstname">First Name</label>
                    <input type="text" class="form-control" id="firstname" placeholder="First name" name="firstname">
                </div>
                <div >
                    <label for="lastname">Last Name</label>
                    <input type="text" class="form-control" id="lastname" placeholder="Last name" name="lastname">
                </div>
                <div >
                    <label for="dob">Date Of Birth</label>
                    <input type="date" class="form-control" id="dob" name="dob">
                </div>

                <div class="form-group">
                    <label for="emailAd">Email</label>
                    <input type="email" class="form-control" id="emailAd" placeholder="Email Address" name="email">
                </div>

            <div class="form-row">
                <div class="form-group col-md-4">
                        <label for="inputState">Sex</label>
                        <select id="inputState" class="form-control" name="sex" placeholder='Sex'>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select>
                </div>  
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
                    <jsp:include page="/Towns" />
                    <div class="form-group col-md-4">
                        
                        <label for="townSel">City/Town</label>
                        <select id="townSel" class="form-control" name="townId">
                            <option selected>Choose...</option>
                            <c:forEach items ="${AllTowns}" var="town">
                                <option value="${town.townId}">
                                    ${town.townName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                            
                    <div class="form-group col-md-4">
                        <jsp:include page="/States" />
                        <label for="inputState">State</label>
                        <select id="inputState" class="form-control">
                            <option selected>Choose...</option>
                            <c:forEach items ="${AllStates}" var="state">
                                <option value="${state.stateId}">
                                    ${state.stateName}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                        
                    <div class="form-group col-md-4">
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
                </div>
  
                        <br>
                <div class="col cent">
                    <button type="submit" class="btn btn-outline-success my-2 my-sm-0">Register Client</button>
                </div>
            </form>

        </div>
        <%@ include file = "footer.jsp" %>