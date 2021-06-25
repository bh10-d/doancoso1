package Controller;

import DAO.ManaP;
import Entity.MStore;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManaControl", value = "/ManaControl")
public class ManaControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String idstr = String.valueOf(session.getAttribute("id"));
        if(session.getAttribute("akou").equals(0)){
            ManaP manaP = new ManaP();
            List<MStore> list = manaP.listdb();
            request.setAttribute("listproduct",list);
        }else{
            ManaP manaP = new ManaP();
            List<MStore> list = manaP.listproduct(idstr);
            request.setAttribute("listproduct",list);
        }
        request.getRequestDispatcher("managerproduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
