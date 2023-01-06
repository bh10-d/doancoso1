package Controller;

import DAO.Dao;
import Entity.Order;
import Entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "DetailOrder", value = "/DetailOrder")
public class DetailOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        Dao dao = new Dao();
        List<Product> listproductorder = new ArrayList<>();

            List<Order> list = dao.listorderidorder(id);
            for (Order listt:list
                 ) {
                String[] txt = listt.getListproduct().split("-");
                for (String s:txt
                     ) {
                    listproductorder.add(dao.getProduct(s));
                }
            }

        for (int i = 0; i < listproductorder.size(); i++) {
            int count = 1;
            for (int j = i+1; j < list.size(); j++) {
                if(listproductorder.get(i).getId() == listproductorder.get(j).getId()){
                    count++;
                    list.remove(j);
                    j--;
                    listproductorder.get(i).setAmount(count);
                }
            }
        }
        double total = 0;
        for (Product o : listproductorder) {
            total = total + o.getAmount() * o.getPrice();
        }

        request.setAttribute("listproorder",listproductorder);
        request.setAttribute("total", total);
        request.setAttribute("idproductfordel",id);
//        System.out.println("id "+id);
//        System.out.println(listproductorder);

        request.getRequestDispatcher("chitietdonhang.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
