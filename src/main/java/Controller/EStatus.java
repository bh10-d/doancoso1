package Controller;

import DAO.Dao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EStatus", value = "/EStatus")
public class EStatus extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        Dao dao = new Dao();
        String id = request.getParameter("id");
        String status = request.getParameter("statusorder");
        if (session.getAttribute("akou").equals(0)){


            dao.editstatus(id,status);
            System.out.println(id);
            System.out.println(status);
        }
        request.getRequestDispatcher("ManagerOrder").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
