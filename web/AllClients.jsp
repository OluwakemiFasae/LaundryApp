<%-- 
    Document   : AllClients
    Created on : 16-Oct-2018, 13:25:15
    Author     : OLUWAKEMI
--%>

<%@ include file = "header.jsp" %>


<div class="container"> 
    <h2 class="display-4 text-center">CLIENTS</h2>


    <div class="container">
        <form >    
            <c:choose>
                <c:when test="${not empty AllClients}">
                    <table  class="table table-hover">
                        <thead>
                            <tr >
                                <td><b>Id</b></td>
                                <td><b>Name</b></td>
                                <td><b>Last name</b></td>
                                <td><b>Birth date</b></td>
                                <td><b>E-mail</b></td>
                                <td><b>Sex</b></td>
                                <td></td>

                            </tr>
                        </thead>
                        <tbody data-link="row" class="rowlink">
                        <c:forEach var="client" items="${AllClients}">

                            <tr >
                                <td>${client.clientId}</td>
                                <td><a href="UserDetail?clientId=${client.clientId}">${client.firstname}</a></td>
                                <td>${client.lastname}</td>
                                <td>${client.DOB}</td>
                                <td>${client.email}</td>
                                <td>${client.sex}</td>
                                
                            </tr>

                        </c:forEach> 
                        </tbody>
                    </table>  
                </c:when>                    
                <c:otherwise>
                    <br>  </br>           
                    <div class="alert alert-info">
                        No Clients Found
                    </div>
                </c:otherwise>
            </c:choose>                        
        </form>
    </div>

    <%@ include file = "footer.jsp" %>
