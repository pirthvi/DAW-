
package Controllers;

import DaO.Dao;
import Model.Products;
import Model.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Register", urlPatterns = {"/Register"})
public class Register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        PrintWriter out = response.getWriter();
        Products obj = new Products();
        Dao dao = new Dao();
        Users user = new Users();
        System.out.println("Hello bhai fdddd");
        if (request.getParameter("fname") == null) {
            System.out.println("Helloe eeeee"+request.getParameter("mob"));
         out.println(dao.verifyMob(request.getParameter("mob")));
           
         
         
        } else {
            user.setFirstName(request.getParameter("fname"));
            user.setLastName(request.getParameter("lname"));
            user.setAddress1(request.getParameter("add1"));
            user.setAddress2(request.getParameter("add2"));
            user.setCity(request.getParameter("city"));
            user.setPostCode(Integer.parseInt(request.getParameter("pcode")));
            user.setMobileNo(request.getParameter("mob"));
            user.setEmail(request.getParameter("email"));
            user.setCountry(request.getParameter("country"));
            user.setProvince(request.getParameter("province"));
            user.setPassword(request.getParameter("password"));
            
            dao.saveUser(user);

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
