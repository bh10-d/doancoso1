package Controller;

import DAO.ManaP;
import Entity.MStore;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StoreControl", value = "/StoreControl")
public class StoreControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ManaP manaP = new ManaP();
        List<MStore> list = manaP.listdb();
        request.setAttribute("productlist",list);
        request.getRequestDispatcher("RauCu.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
