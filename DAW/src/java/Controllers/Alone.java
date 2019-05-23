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

@WebServlet(name = "Alone", urlPatterns = {"/Alone"})
public class Alone extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String c = request.getParameter("c");
        System.out.println(c);
        String type = "";
        String cat;
        List<Products> p = new ArrayList<Products>();
        HttpSession sess = request.getSession();
        String gender = (String) sess.getAttribute("gender");
        String brand = (String) sess.getAttribute("bt");

        sess.setAttribute("catg", c);
        System.out.println(gender);
        if (gender == null) {
            gender = " ";
            System.out.println("Gender null h" + gender);
        }
        Dao obj = new Dao();

        if (gender != " ") {

            p = obj.getProductsByGenderCatg(gender, c, 0,0,0);
            cat = "getProductsByGenderCatg";
            type=c+" for  "+gender;
        } else {
            p = obj.getProductsByCatg(c, 0,0,0);
            cat = "getProductsByCatg";
             type=c;
        }

        int a = 0;

        // p = obj.getProducts(0, c, 0, gender," ");
        for (Products products : p) {

            String ss = p.get(a).getBrands();
            ss = "Brands/" + ss + ".jpg";
            p.get(a).setBrandimg(ss);
            a++;
        }
        if (gender.equals("M")) {
            type = c + " for" + " Men";
        } else if (gender.equals("F")) {
            type = c + " for " + " Women";
        } else if (gender.equals("K")) {
            type = c + " for" + " Children";
        }
        
        sess.setAttribute("cat", cat);
        sess.setAttribute("pro", p);
        sess.setAttribute("c", c);
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
