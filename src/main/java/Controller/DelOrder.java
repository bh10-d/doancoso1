package Controller;

import DAO.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelOrder", value = "/DelOrder")
public class DelOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Dao dao = new Dao();
        String idproductfordel = request.getParameter("idproductfordel");
        String id = request.getParameter("id");
        System.out.println("idproductfordel: "+idproductfordel);
        System.out.println("id san pham: "+id);
        dao.deleteorder(id);
        request.getRequestDispatcher("ManagerOrder").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
