package Controller;

import DAO.ManaP;
import Entity.MStore;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Trangchu", value = "/Trangchu")
public class Trangchu extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        ManaP manaP = new ManaP();
//        List<MStore> list = manaP.listdb();
//        request.setAttribute("productlistfortrangchu",list);
        response.sendRedirect("trangchu.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
