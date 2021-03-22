<%-- 
    Document   : OrderDetail
    Created on : 31-Oct-2018, 19:23:26
    Author     : OLUWAKEMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file = "header.jsp" %>
<div class="container">


    <div class="jumbotron">
        <h2 class="display-4 text-center">ORDER INFO</h2>
        <p class="display-4">
            <c:forEach var="curOrder" items="${CurrentOrder}">
        <div>
            <button onclick="window.history.back()" class="btn btn-outline-success my-2 my-sm-0">Go Back</button>
            <button type="button" class="btn btn-outline-success my-2 my-sm-0" data-toggle="modal" data-target="#exampleModal">
                Edit Order
            </button>

            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Edit Order</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="exampleFormControlSelect1">Change Order Status</label>
                                    <select class="form-control" id="exampleFormControlSelect1" name="status">
                                        <option value="On Queue">On Queue</option>
                                        <option value="Processing">Processing</option>
                                        <option value="Processed">Processed</option>
                                        <option value="Picked Up">Picked Up</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlSelect3">Change Paid Status</label>
                                    <select class="form-control" id="exampleFormControlSelect3" name="paidstatus">
                                        <option value="true">Yes</option>
                                        <option value="false">No</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleFormControlSelect2">Date Picked Up</label>
                                    <input type="date" name="actDate" id="exampleFormControlSelect2" class="form-control">
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <a href="EditOrder?orderId=${curOrder.orderId}" type="button" class="btn btn-primary">Save changes</a>
                        </div>
                    </div>
                </div>
            </div>
            <button onclick="window.print()" class="btn btn-outline-success my-2 my-sm-0">Print Invoice</button>
        </div>
        
                <!--<input type="text" id="orderhid" name="orderId" value="${curOrder.orderId}" hidden>-->    
            <p><b>First Name:</b> ${curOrder.firstname}</p>
            <p><b>Last Name:</b> ${curOrder.lastname}</p>
            <p><b>Email Address:</b> ${curOrder.email}</p>
            <p><b>Date Clothes were Dropped:</b> ${curOrder.dateDropped}</p>
            <p><b>Expected Date to Pick Clothes:</b> ${curOrder.expectDateofPickUp}</p>
            <p><b>Status</b> ${curOrder.orderStatus}</p>
            <p><b>Paid Status</b> ${curOrder.paidStatus}</p>
        </c:forEach> 
        <table  class="table table-striped">
            <thead>
                <tr>
                    <td><b>Id</b></td>
                    <td><b>Product</b></td>
                    <td><b>Unit Price<b></td>
                                <td><b>Quantity</b></td>
                                <td><b>Total</b></td>
                                </tr>
                                </thead>

                                <c:forEach var="curOrder" items="${CurrentOrderItems}">

                                    <tr>
                                        <td>#</td>
                                        <td>${curOrder.prodName}</td> 
                                        <td>${curOrder.unitPrice}</td>
                                        <td>${curOrder.quantity}</td>
                                        <td>${curOrder.total}</td>

                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td> </td>
                                    <td> </td>
                                    <td> </td>
                                    <td>Sum Total</td>
                                    <td> </td>
                                </tr>
                                </table>
                                </p>
                                </div>
                                </div>


                                <%@ include file = "footer.jsp" %>

