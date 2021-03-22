<%-- 
    Document   : TakeOrder
    Created on : 20-Oct-2018, 23:01:10
    Author     : OLUWAKEMI
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file = "header.jsp" %>
        <c:import url="/Product" />
        <c:import url="/clients" />
        
        <div class="container bord">
            <div class="cardy widy">
            <form action="SubmitOrder" method="post">
                <c:import url="/Product" />
                <c:import url="/clients" />

                
                <label for="clients"> Choose Client</label>    
                <select id="clients" class="form-control" name="client" required>
                            
                            <c:forEach items ="${AllClients}" var="cly">
                                <option value="${cly.clientId}">
                                    ${cly.firstname}    ${cly.lastname}
                                </option>
                            </c:forEach>
                        </select>
                     <br/>
                     
                    <label for="products">Fabric type</label>

                    <div class="list-group" id="products">
                        
                        <c:forEach items ="${AllProds}" var="prod">
                            <div class="list-group-item">
                                <div class="form-check form-inline">
                                    <input type="checkbox" name="product" value="${prod.prodName}" />
                                    <span >${prod.prodName}</span>
                                    &nbsp;
                                    <input type="text" name="${prod.prodName}Id" value=${prod.pId} hidden/>
                                    &nbsp;
                                    <input type="text" name="${prod.prodName}UnitPrice" value=${prod.unitPrice} hidden/>
                                    <span >${prod.unitPrice}</span>
                                    &nbsp;&nbsp;&nbsp;
                                    <input type="input" name="${prod.prodName}Quant" placeholder="0"/>
                                </div>

                            </div>
                        </c:forEach>
                    </div>
                    <br/>
                    
                    <div class="col">
                        <label for="doemp">Date Logged</label>
                        <input type="date" class="form-control" id="doemp" name="dtLog" required/>
                    </div>
                    <br/>
                    <div class="col">
                        <label for="doemp">Expected Date of Pickup</label>
                        <input type="date" class="form-control" id="doemp" name="ExDOD" required/>
                    </div>
                    <br/>
                    <label for="paid"> Payment Made?</label>
                    <select id="paid" class="form-control" name="paid" required>
                            <option value="true">Yes</option>
                            <option value="false">No</option>     
                        </select>
                    <br>
                <div class="col cent">
                    <button type="submit" class="btn btn-outline-success my-2 my-sm-0">Submit</button>
                </div>
            </form>
            </div>
        </div>
   <%@ include file = "footer.jsp" %>
