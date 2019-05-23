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

/**
 *
 * @author PirthviSingh
 */
@WebServlet(name = "NewProducts", urlPatterns = {"/NewProducts"})
public class NewProducts extends HttpServlet {

    int k = 0;
    //int min=0,max=0;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
     
       HttpSession sess = request.getSession();
       String gender = (String) sess.getAttribute("gender");
       String maxprice=(String) sess.getAttribute("max");
       String minprice=(String) sess.getAttribute("min");
       if(maxprice==null){
      maxprice="0";
      minprice="0";
     }
     
    int max=Integer.parseInt(maxprice);
    int min=Integer.parseInt(minprice);
        String brnd = (String) sess.getAttribute("bt");
        if (brnd == null) {
            brnd = "no";
        }
        String catg = (String) sess.getAttribute("catg");
        String gend = (String) sess.getAttribute("gend");
        if (gend == null) {
            gend = " ";
        }

        List<Products> p = new ArrayList<Products>();
        Dao obj = new Dao();
        String f = request.getParameter("f");
        int start = Integer.parseInt(f);
        start--;
        start = start * 12;
        
        
        String cat = (String) sess.getAttribute("cat");
        switch (cat) {
            case "getProductsByCatg":
                p = obj.getProductsByCatg(catg, start,min,max);
                break;
            case "getProductsByBrand":
                p = obj.getProductsByBrand(brnd, start,min,max);
                break;
            case "getProductsByGender":
                p = obj.getProductsByGender(gend, start,min,max);
                break;
            case "getProductsByGenderCatg":
                p = obj.getProductsByGenderCatg(gend, catg, start,min,max);
                break;
            case "getProductsByGenderBrand":
                p = obj.getProductsByGenderBrand(gend, brnd, start,min,max);
                break;
            case "getProductsByGenderBrandCatg":
                p = obj.getProductsByGenderBrandCatg(gend, brnd, catg, start,min,max);
                break;
            case "getProductsByCatgBrand":
                p = obj.getProductsByCatgBrand(brnd, catg, start,min,max);
                break;
            default:
                break;
        }
       

        int a = 0;
        for (Products products : p) {

            String ss = p.get(a).getBrands();
            ss = "Brands/" + ss + ".jpg";
            p.get(a).setBrandimg(ss);
            a++;
        }

        
        sess.setAttribute("pro", p);
        

       
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
