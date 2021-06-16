package Controller.Giohang;

import Model.Page.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Ordercontrol", value = "/order")
public class Ordercontrol extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie arr[] = request.getCookies();
        List<Product> list = new ArrayList<>();
//        DAO dao = new DAO();
//        for (Cookie o : arr) {
//            if (o.getName().equals("id")) {
//                String txt[] = o.getValue().split(",");
//                for (String s : txt) {
//                    list.add(dao.getProduct(s));
//                }
//            }
//        }
        for (int i = 0; i < list.size(); i++) {
            int count = 1;
            for (int j = i+1; j < list.size(); j++) {
                if(list.get(i).getId() == list.get(j).getId()){
                    count++;
                    list.remove(j);
                    j--;
                    list.get(i).setAmount(count);
                }
            }
        }
        for (Cookie o : arr) {
            o.setMaxAge(0);
            response.addCookie(o);
        }
        response.sendRedirect("StoreControl");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
