<%-- 
    Document   : index
    Created on : 11-Oct-2018, 13:14:33
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Goldmine Laundry</title>

        <!-- Bootstrap core CSS -->
        <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="resources/css/business-casual.css" rel="stylesheet">
    </head>
    <body>
        <h1 class="site-heading text-center text-white d-none d-lg-block">
            <span class="site-heading-upper text-primary mb-3">Transaction and Activities Management</span>
            <span class="site-heading-lower">Gold_Mine Check</span>
        </h1>

        <div class="container">
            <div class="login">

                <form action="login" method="post" >

                    <div class="text-primary cent">
                        <label>Please Log in</label>
                    </div>

                    <c:if test="${not empty loginResult}">
                        <%--<c:out value="${loginResult}"/>--%>
                        <div class="alert alert-danger" role="alert">
                            ${loginResult}
                        </div>
                    </c:if>


                    <div class="form-group">
                        <label for="username">Username</label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password" required>
                    </div>
                    <div class="cent">
                        <button type="submit" class="btn btn-primary">Login</button>
                    </div>

                </form>


            </div>

        </div>







        <!-- Bootstrap core JavaScript -->
        <script src="resources/vendor/jquery/jquery.min.js"></script>
        <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
