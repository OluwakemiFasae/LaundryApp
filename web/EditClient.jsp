<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "header.jsp" %>

        <div class="container">
            <form action="JSP/EditClientHandler.jsp" method="post">
                <c:choose>
                    <c:when test="${not empty FoundClient}">
                        
                        <c:forEach var="client" items="${FoundClient}">
                            <input type="text" class="form-control" id="cliendId" value="${client.clientId}" name="clientId" hidden >
                            <div >
                                <label for="firstname">First Name</label>
                                <input type="text" class="form-control" id="firstname" placeholder="First name" name="firstname" value="${client.firstname}">
                            </div>
                            <div >
                                <label for="lastname">Last Name</label>
                                <input type="text" class="form-control" id="lastname" placeholder="Last name" name="lastname" value="${client.lastname}">
                            </div>
                            <div >
                                <label for="dob">Date Of Birth</label>
                                <input type="date" class="form-control" id="dob" name="dob" value="${client.DOB}">
                            </div>

                            <div class="form-group">
                                <label for="emailAd">Email</label>
                                <input type="email" class="form-control" id="emailAd" placeholder="Email Address" name="email" value="${client.email}">
                            </div>

                            <div class="form-group col-md-4">
                                    <label for="inputState">Sex</label>
                                    <select id="inputState" class="form-control" name="sex" value="${client.sex}">
                                        <option selected>Choose...</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        
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
