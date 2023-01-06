package Controller;

import DAO.Filter;
import DAO.ManaP;
import Entity.MStore;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Search", value = "/Search")
public class Search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String data = request.getParameter("search");

        Filter filter = new Filter();
        int id = filter.convertnum(filter.convert(data));

        ManaP manaP = new ManaP();
        List<MStore> list = manaP.search(id);
        request.setAttribute("checksearch",id);
        request.setAttribute("search",list);

        request.getRequestDispatcher("search.jsp").forward(request,response);
        System.out.println(data);
        System.out.println(id);
//        System.out.println(list);
        System.out.println(list.toString());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
