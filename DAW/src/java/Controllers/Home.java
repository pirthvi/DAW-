package Controllers;

import DaO.Dao;
import Model.Products;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Home", urlPatterns = {"/Home"})
public class Home extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Products[] p = new Products[8];
        String[] images = new String[8];
        session.removeAttribute("pro");
        session.removeAttribute("gender");
        session.removeAttribute("gend");
        session.removeAttribute("category");
        session.removeAttribute("catg");
        session.removeAttribute("bt");
      //  session.removeAttribute("cart");
        session.removeAttribute("min");
        session.removeAttribute("max");
        Dao dao = new Dao();
        p = dao.getFeatured("fddd");
         

        for (int i = 0; i < 8; i++) {
            images[i] = p[i].getBrands();
            images[i] = "Brands/" + images[i] + ".jpg";
            }
        session.setAttribute("p", p);
        session.setAttribute("images", images);
        session.setAttribute("total", 0);
        session.setAttribute("price",0.0);
        response.sendRedirect("Home.jsp");

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
