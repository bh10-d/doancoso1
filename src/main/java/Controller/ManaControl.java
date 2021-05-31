package Controller;

import Model.ManaP;
import Model.Page.MStore;

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
        int id = Integer.parseInt(idstr);
        ManaP manaP = new ManaP();

        List<MStore> list = manaP.listproduct(id);
        request.setAttribute("listproduct",list);

//        System.out.println(session.getAttribute("id"));
        request.getRequestDispatcher("managerproduct.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
