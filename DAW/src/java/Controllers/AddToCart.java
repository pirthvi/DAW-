/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

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

@WebServlet(name = "AddToCart", urlPatterns = {"/AddToCart"})
public class AddToCart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      String cart= request.getParameter("p");
      HttpSession sess=request.getSession(); 
     
     List<Products>  cartpro = (List<Products>) sess.getAttribute("cart");
     
     if(cartpro==null){
         cartpro=new ArrayList<Products>();
     }
     double price=(double) sess.getAttribute("price");
     System.out.println("the value of price is  "+price);
      String qty=cart.substring(1,cart.length());
      String size=cart.substring(0,1);
      String sizes[] = new String[Integer.parseInt(qty)];
      Products product=(Products) sess.getAttribute("solo");
      for(int i=0;i<Integer.parseInt(qty);i++){
          cartpro.add(product);
         
          sizes[i]=size;
          price=price+product.getPrice();
      }
        
        System.out.println(cartpro.size());
        sess.setAttribute("price", price);
        sess.setAttribute("cart", cartpro);
        sess.setAttribute("total",cartpro.size());
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
