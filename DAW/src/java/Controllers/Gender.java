/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import DaO.Dao;
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


@WebServlet(name = "Gender", urlPatterns = {"/Gender"})
public class Gender extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       String g = request.getParameter("g");
       Dao obj = new Dao();
       
        HttpSession sess = request.getSession();
        System.out.println(g);
        sess.removeAttribute("catg");
        sess.removeAttribute("bt");
       
         List<Products> p = new ArrayList<Products>();
       
        p=obj.getProductsByGender(g, 0,0,0);
        String cat="getProductsByGender";
       int a=0;
       for (Products products : p) {
            
            String ss=p.get(a).getBrands();
            ss="Brands/"+ss+ ".jpg";
            p.get(a).setBrandimg(ss);
            a++;
        }
        String type="";
        if(g.equals("M")){
            type="Men";
        }
        else  if(g.equals("F")){
            type="Women";
        }
        else if(g.equals("K")){
            type="Children";
        }
      
        sess.setAttribute("cat",cat);
        sess.setAttribute("gend",g);
        sess.setAttribute("gender",g);
        sess.setAttribute("pro", p);
        sess.setAttribute("c", g);
        sess.setAttribute("type",type);
        
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
