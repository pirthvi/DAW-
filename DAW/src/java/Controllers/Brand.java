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

@WebServlet(name = "Brand", urlPatterns = {"/Brand"})
public class Brand extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sess = request.getSession();
        String cat = "";
        String type = "";
        String g = request.getParameter("g");
        String gender = (String) sess.getAttribute("gender");
        String catg = (String) sess.getAttribute("catg");
        List<Products> p = new ArrayList<Products>();
        if (gender == null) {
            gender = " ";
        }
        if (catg == null) {
            catg = " ";
        }
        Dao dao = new Dao();
        if (gender.equals(" ")) {

            p = dao.getProductsByBrand(g, 0,0,0);
            if (" " != catg) {
                p = dao.getProductsByCatgBrand(g, catg, 0,0,0);
                cat = "getProductsByCatgBrand";
                
                type=catg+" of  "+g+" Brand";
            }
        } else {
                 String gg=gender;
                 switch (gg) {
                    case "M":
                        gg="Men";
                        break;
                    case "F":
                        gg="Female";
                        break;
                    case "K":
                        gg="Children";
                        break;
                    default:
                        break;
                }
            p = dao.getProductsByGenderBrand(gender, g, 0,0,0);
            if (" " != catg) {
                p = dao.getProductsByGenderBrandCatg(gender, g, catg, 0,0,0);
                cat = "getProductsByGenderBrandCatg";
                type=catg+" for "+gg+" of "+g+" Brand";
            }
            else{
                p=dao.getProductsByGenderBrand(gender, g, 0,0,0);
                cat="getProductsByGenderBrand";
               
               
                type=gg+" of  "+g+" Brand";
            }
        }

        //p=dao.getProducts(0, g, 2,gender," ");
        int a = 0;
        for (Products products : p) {

            String ss = p.get(a).getBrands();
            ss = "Brands/" + ss + ".jpg";
            p.get(a).setBrandimg(ss);
            a++;
        }
       
        sess.setAttribute("cat", cat);
        sess.setAttribute("pro", p);
        sess.setAttribute("c", g);
        sess.setAttribute("bt", g);
        sess.setAttribute("type", type);

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
