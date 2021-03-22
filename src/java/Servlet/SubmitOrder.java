/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import dataaccess.OrderAccess;
import dataaccess.OrderItemsAccess;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Order;
import model.OrderItems;

/**
 *
 * @author OLUWAKEMI
 */
public class SubmitOrder extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int client = Integer.parseInt(request.getParameter("client"));
          
          String[] items =request.getParameterValues("product"); 
          
          String DOD = request.getParameter("dtLog");
          
          String exDOD = request.getParameter("ExDOD");
          
          String paid = request.getParameter("paid");
          
          //OrderAccess ord = new OrderAccess();
          Order newOrder = new Order(0,client,DOD,exDOD,paid,"On Queue");
          
          int ordId = OrderAccess.addNew(newOrder);
          
        for (String item : items) {
            String up = item + "UnitPrice";
            String unp = request.getParameter(up);
            double unitPrice = Double.parseDouble(unp);
            String paramName = item + "Quant";
            int qty = Integer.parseInt(request.getParameter(paramName));
            String ids = item + "Id";
            String id = request.getParameter(ids);
            int actpId = Integer.parseInt(id);
            OrderItems order = new OrderItems(0, ordId, actpId, qty, unitPrice);
            OrderItemsAccess ordIt= new OrderItemsAccess();
            ordIt.addNew(order);
        }
        
        request.setAttribute("CurrentOrder", OrderAccess.getOrderDet(ordId));
        request.setAttribute("CurrentOrderItems", OrderItemsAccess.getOrderDet(ordId));
        System.out.println(OrderAccess.getOrderDet(ordId));
        RequestDispatcher rd = request.getRequestDispatcher("try.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
