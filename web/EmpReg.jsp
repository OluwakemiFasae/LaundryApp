<%-- 
    Document   : EmpReg
    Created on : 09-Oct-2018, 23:34:59
    Author     : OLUWAKEMI
--%>


<%@ include file = "header.jsp" %>
    <body>
        <div class="formbody">


            <h1>Register a new Employee</h1>
            <br>
            <form action="JSP/RegEmpHandler.jsp" method="post">
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
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username">
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
                <div class="form-row">
                    <div class="col">
                        <label for="role">Role</label>
                        <input type="text" class="form-control" id="role" placeholder="Role" name="role">
                    </div>

                    <div class="col">
                        <label for="department">Department</label>
                        <input type="text" class="form-control" id="department" placeholder="Department" name="department">
                    </div>

                    <div class="col">
                        <label for="doemp">Date Employed</label>
                        <input type="date" class="form-control" id="doemp" name="doEmp">
                    </div>
                </div>
                <div >
                    &nbsp;
                </div>
                <div class="col cent">
                    <button type="submit" class="btn btn-primary">Add Employee</button>
                </div>
            </form>

        </div>
        <%@ include file = "footer.jsp" %>