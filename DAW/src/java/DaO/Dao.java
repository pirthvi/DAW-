package DaO;

import Model.Orders;
import Model.Products;
import Model.Users;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class Dao {

    Products[] p = new Products[8];

    public Session common() {
        SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
        Session s = sf.openSession();
        s.beginTransaction();
        return s;
    }

    public void closeSession(Session s) {
        s.getTransaction().commit();
        s.close();
    }

    public Products[] getFeatured(String cat) {
        Session s = common();
        Query q;
        q = s.createQuery("from Products");
        q.setMaxResults(8);
        List<Products> products;
        products = q.list();
        for (int i = 0; i <= 7; i++) {
            p[i] = products.get(i);
        }
        closeSession(s);
        return p;
    }

    public List<Products> getProductsByCatg(String catg, int start, int min, int max) {

        Session s = common();
        Query q = s.createQuery("from Products where category='" + catg + "'");
        if (min > 0) {
            q = s.createQuery("from Products where category='" + catg + "' AND price>=" + min + "AND  price<=" + max);
        }
        q.setFirstResult(start);
        q.setMaxResults(12);
        List<Products> list = q.list();
        closeSession(s);
        return list;
    }

    public List<Products> getProductsByBrand(String brand, int start, int min, int max) {
        Session s = common();
        Query q = s.createQuery("from Products where Brands='" + brand + "'");
        if (max > 0) {
            q = s.createQuery("from Products where Brands='" + brand + "'" + "' AND price>=" + min + "AND  price<=" + max);
        }
        q.setFirstResult(start);
        q.setMaxResults(12);
        List<Products> list = q.list();
        closeSession(s);
        return list;
    }

    public List<Products> getProductsByGender(String Gender, int start, int min, int max) {
        Session s = common();
        Query q = s.createQuery("from Products where Gender='" + Gender + "'");
        if (max > 0) {
            q = s.createQuery("from Products where Gender='" + Gender + "' AND price>=" + min + "AND  price<=" + max);
        }
        q.setFirstResult(start);
        q.setMaxResults(12);
        List<Products> list = q.list();
        closeSession(s);
        return list;
    }

    public List<Products> getProductsByGenderCatg(String Gender, String catg, int start, int min, int max) {
        Session s = common();
        Query q = s.createQuery("from Products where Gender='" + Gender + "' AND Category= '" + catg + " '");
        if (max > 0) {
            q = s.createQuery("from Products where Gender='" + Gender + "' AND Category= '" + catg + "' AND price>=" + min + "AND  price<=" + max);
        }
        q.setFirstResult(start);
        q.setMaxResults(12);
        List<Products> list = q.list();
        closeSession(s);
        return list;
    }

    public List<Products> getProductsByGenderBrand(String Gender, String brand, int start, int min, int max) {
        Session s = common();
        Query q = s.createQuery("from Products where Gender='" + Gender + "' AND Brands= '" + brand + " '");
        if (max > 0) {
            q = s.createQuery("from Products where Gender='" + Gender + "' AND Brands= '" + brand + "' AND price>=" + min + "AND  price<=" + max);
        }
        q.setFirstResult(start);
        q.setMaxResults(12);
        List<Products> list = q.list();
        closeSession(s);
        return list;
    }

    public List<Products> getProductsByGenderBrandCatg(String Gender, String brand, String catg, int start, int min, int max) {
        Session s = common();
        Query q = s.createQuery("from Products where Gender='" + Gender + "' AND Brands= '" + brand + " ' AND category='" + catg + "'");
        if (max > 0) {
            q = s.createQuery("from Products where Gender='" + Gender + "' AND Brands= '" + brand + " ' AND category='" + catg + "' AND price>=" + min + "AND  price<=" + max);
        }
        q.setFirstResult(start);
        q.setMaxResults(12);
        List<Products> list = q.list();
        closeSession(s);
        return list;
    }

    public List<Products> getProductsByCatgBrand(String brand, String catg, int start, int min, int max) {
        Session s = common();
        Query q = s.createQuery("from Products where Brands= '" + brand + " ' AND category='" + catg + "'");
        if (max > 0) {
            q = s.createQuery("from Products where Brands= '" + brand + " ' AND category='" + catg + "' AND price>=" + min + "AND  price<=" + max);
        }
        q.setFirstResult(start);
        q.setMaxResults(12);
        List<Products> list = q.list();
        closeSession(s);
        return list;
    }

    public void saveUser(Users user) {
        Session s = common();
        s.save(user);

        closeSession(s);
    }

    public String verifyMob(String mob) {
        Session s = common();
        Query q = s.createQuery("from Users where mobileNo= '" + mob + "'");
        Users mobile = (Users) q.uniqueResult();
        if (mobile == null) {
            return " ";
        }
        closeSession(s);
        if (mobile.getMobileNo().equals(mob)) {

            return "Moblile No already Exists";
        }

        return " ";

    }

    public int Login(String email, String pass) {
        Session s = common();
        Query q = s.createQuery("from Users where email='" + email + "' AND  password= '" + pass + "'");
        Users user = (Users) q.uniqueResult();
        
        if (user == null) {
            return 0;
        }
        int id=user.getId();
        closeSession(s);

        return id;
    }
    public void saveOrders(Orders orders){
        Session s= common();
        s.save(orders);
        closeSession(s);
    }
    public List<Orders> showOrders(){
        Session s =common();
        Query q;
        q = s.createQuery("Select userId from Orders");
        List<Orders> orders;
        orders = q.list();
        closeSession(s);
        return orders;
    }
    public List<Products> searchProducts(String name){
        Session s = common();
        Query q = s.createQuery("from Products where name LIKE '"+name+"%' OR name LIKE '%"+name+"%'");
        q.setMaxResults(10);
        List<Products> list = q.list();
        closeSession(s);
        
        return list;
    }
}
