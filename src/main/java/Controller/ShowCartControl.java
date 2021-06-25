package Controller;

import DAO.Dao;
import Entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowCartControl", value = "/print")
public class ShowCartControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie arr[] = request.getCookies();
        PrintWriter out = response.getWriter();
        List<Product> list = new ArrayList<>();
        Dao dao = new Dao();
        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                String txt[] = o.getValue().split("-");
                for (String s : txt) {
                    list.add(dao.getProduct(s));
                }
                System.out.println("showcart: "+o.getValue());
                System.out.println("list: "+list);
            }

        }

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
            System.out.println("list get: "+list.get(i));
            System.out.println("sizelist: "+list.size());
        }
        double total = 0;
        for (Product o : list) {
            total = total + o.getAmount() * o.getPrice();
        }
        request.setAttribute("list", list); ///////////////////////
        request.setAttribute("total", total);
        request.setAttribute("vat", 0.1 * total);
        request.setAttribute("sum", 1.1 * total);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
