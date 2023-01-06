package Controller;

import DAO.Dao;
import Entity.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerOrder", value = "/ManagerOrder")
public class ManagerOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Dao dao = new Dao();
        HttpSession sessionuser = request.getSession();
        String id = String.valueOf(sessionuser.getAttribute("id"));
        if (sessionuser.getAttribute("akou").equals(0)){
            List<Order> list = dao.listorderad();
            request.setAttribute("listorderad",list);
        }else{
            List<Order> list = dao.listorder(id);
            request.setAttribute("listorder",list);
        }
        request.getRequestDispatcher("managerorder.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
