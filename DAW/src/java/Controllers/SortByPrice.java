
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

@WebServlet(name = "SortByPrice", urlPatterns = {"/SortByPrice"})
public class SortByPrice extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sess = request.getSession();
        List<Products> p = new ArrayList<Products>();
        String type= (String) sess.getAttribute("type");
        Dao obj = new Dao();
        String cat = (String) sess.getAttribute("cat");
        String gend = (String) sess.getAttribute("gend");
        String brnd = (String) sess.getAttribute("bt");
        String catg = (String) sess.getAttribute("catg");
        
        String price=request.getParameter("price");
        int len=price.length();
        int start=Integer.parseInt(price.substring(0,1));
        int end=Integer.parseInt(price.substring(len-1));
        int min=Integer.parseInt(price.substring(1,start+1));
        int max=Integer.parseInt(price.substring(end,len-1));
        
         switch (cat) {
            case "getProductsByCatg":
                p = obj.getProductsByCatg(catg, 0,min,max);
                break;
            case "getProductsByBrand":
                p = obj.getProductsByBrand(brnd, 0,min,max);
                break;
            case "getProductsByGender":
                p = obj.getProductsByGender(gend, 0,min,max);
                break;
            case "getProductsByGenderCatg":
                p = obj.getProductsByGenderCatg(gend, catg, 0,min,max);
                break;
            case "getProductsByGenderBrand":
                p = obj.getProductsByGenderBrand(gend, brnd, 0,min,max);
                break;
            case "getProductsByGenderBrandCatg":
                p = obj.getProductsByGenderBrandCatg(gend, brnd, catg, 0,min,max);
                break;
            case "getProductsByCatgBrand":
                p = obj.getProductsByCatgBrand(brnd, catg, 0,min,max);
                break;
            default:
                break;
        }
          int a = 0;
        for (Products products : p) {
            System.out.println(products.getName());
            String ss = p.get(a).getBrands();
            ss = "Brands/" + ss + ".jpg";
            p.get(a).setBrandimg(ss);
            a++;
        }
        String gg=" ";
        if(gend.equals("M")){
            gg="Men";
            
        }
        else if(gend.equals("F")){
            gg="Women";
        }
        else if(gend.equals("K")){
            gg="Children";
        }
        String brand=" ";
        if(brnd==null){
            brand=" ";
        }
        else{
            brand=" of "+brnd+" brand";
        }
        type =gg+"   "+brand+" Price between "+min+" AND "+max;
        sess.setAttribute("cat", cat);
        
        sess.setAttribute("pro", p);
        String minn=min+"";
        String maxx=max+"";
        System.out.println("the value of max is  "+max+" the value of min is "+min );
        sess.setAttribute("max", maxx);
        sess.setAttribute("min", minn);
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
