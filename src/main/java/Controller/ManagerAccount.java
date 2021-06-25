package Controller;

import Entity.Account;
import DAO.LoginDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerAccount", value = "/ManagerAccount")
public class ManagerAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        HttpSession sessionaccount = request.getSession();
        LoginDao loginDao = new LoginDao();
        List<Account> accounts = loginDao.manageraccount();
        if (session.getAttribute("akou").equals(0)){
            sessionaccount.setAttribute("sessionaccount",accounts);
            System.out.println("id akou: "+session.getAttribute("akou"));
            request.getRequestDispatcher("manageraccount.jsp").forward(request,response);
        }else{
            sessionaccount.setAttribute("sessionaccount","null");
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
