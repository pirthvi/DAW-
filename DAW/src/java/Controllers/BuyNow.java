/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DaO.Dao;
import Model.Orders;
import Model.Products;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "BuyNow", urlPatterns = {"/BuyNow"})
public class BuyNow extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Dao dao = new Dao();
        try (PrintWriter out = response.getWriter()) {
        HttpSession sess=request.getSession();
        if((sess.getAttribute("email")==null)&&(sess.getAttribute("pass")==null)){
            response.sendRedirect("login.jsp");
        }
        else{
            List<Products> cart = (List<Products>) sess.getAttribute("cart");
            List<Products> orders = new ArrayList<>();
            orders.addAll(cart);
            sess.setAttribute("orders", orders);
            Orders ord = new Orders();
            for (Products order : orders) {
                ord.setPId(Integer.parseInt(order.getModel()));
                ord.setQuantity(444);
                ord.setSize("M");
                ord.setUserId(1);
                ord.setUserId((int) sess.getAttribute("userId"));
                dao.saveOrders(ord);
                
            }
        }
            
            
           
        }
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
