package Controller;

import DAO.Dao;
import Entity.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Ordercontrol", value = "/order")
public class Ordercontrol extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Cookie arr[] = request.getCookies();
        List<Product> list = new ArrayList<>();
        Dao dao = new Dao();
        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                String txt[] = o.getValue().split("-");
                for (String s : txt) {
                    list.add(dao.getProduct(s));
                }
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
//                    System.out.println("count:::::::::  "+count);
                }
            }
        }
//        System.out.println("kich co list: "+list.size());








        HttpSession sessionorder = request.getSession();
        String id = String.valueOf(sessionorder.getAttribute("id"));
        if (id.equals("null")){
            id = "0";
        }
        System.out.println("id user: "+id);

        double total = 0;
        int amout = 0;
        for (Product o : list) {
            total = total + o.getAmount() * o.getPrice();
            amout+=o.getAmount();
            System.out.println("so luong: "+o.getAmount());
        }
//        System.out.println("amout:    "+amout);
//        request.setAttribute("list", list); ///////////////////////
//        request.setAttribute("total", total);
//        request.setAttribute("vat", 0.1 * total);
//        request.setAttribute("sum", 1.1 * total);

        for (Cookie o : arr) {
            o.setMaxAge(0);
            response.addCookie(o);
        }
//        DecimalFormat df = new DecimalFormat();
//        df.setMaximumFractionDigits(2);
//        String totall = df.format(total*1.1);
        String listproduct = "";
        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                listproduct = o.getValue();
            }
        }
//        System.out.println("tong tien: "+df.format(total*1.1));
        if (id!="0"){
            dao.order(id,"ACXADS","Đang xử lý",String.valueOf(total),String.valueOf(amout),listproduct);
        }

        System.out.println("listproduct: "+listproduct);

        response.sendRedirect("Trangchu");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
