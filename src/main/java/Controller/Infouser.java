package Controller;

import DAO.ManaAccount;
import Entity.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Infouser", value = "/Infouser")
public class Infouser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String id = String.valueOf(session.getAttribute("id"));


        ManaAccount inUser = new ManaAccount();
        Account account = inUser.InfoUser(id);



        request.setAttribute("firstname",account.getFirstname());
        request.setAttribute("lastname", account.getLastname());
        request.setAttribute("dob",account.getDoB());
        request.setAttribute("address",account.getAddress());
        request.setAttribute("email",account.getEmail());

        if (account.getNumber() == 0){
            request.setAttribute("number","");
        }else{
            request.setAttribute("number","0"+account.getNumber());
        }


//        System.out.println(account.getFirstname());
//        System.out.println(account.getLastname());
//        System.out.println(account.getEmail());

//        response.sendRedirect("userpage.jsp");
        request.getRequestDispatcher("userpage.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
