package Controller;

import Model.Login.Account;
import Model.Login.ImpDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Servlet", value = "/Servlet")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImpDB impDB = new ImpDB();
        Account account = impDB.ImpDB();

        ImpDB impDBS = new ImpDB();
        List<Account> account1 = impDBS.impDBS();
        request.setAttribute("account",account1);
//        for (Account accountlist:account1
//             ) {
//            request.setAttribute("account",account1);
//        }

        request.getRequestDispatcher("xinchao.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ImpDB impDB = new ImpDB();
//        Account account = impDB.ImpDB();
//        String a = "abc";
//        request.setAttribute("account",account);
//        request.getRequestDispatcher("xinchao.jsp").forward(request,response);
    }
}
