package Controller;

import DAO.ManaP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DProduct", value = "/DProduct")
public class DProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ManaP manaP = new ManaP();

        String idpstr = request.getParameter("idp");
        int idp = Integer.parseInt(idpstr);
        manaP.del(idp);

        request.getRequestDispatcher("ManaControl").forward(request,response);
        System.out.println("delete success");
        System.out.println(idp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
