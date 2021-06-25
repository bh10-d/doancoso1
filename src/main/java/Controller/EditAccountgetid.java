package Controller;

import DAO.ManaAccount;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditAccountgetid", value = "/EditAccountgetid")
public class EditAccountgetid extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");

        if (password.equals(repassword)){
            ManaAccount account = new ManaAccount();
            account.EditAccount(id,password);
            request.getRequestDispatcher("ManagerAccount").forward(request,response);

            System.out.println("iasdasdasd: "+id);
            System.out.println(password);
            System.out.println(repassword);
            HttpSession session = request.getSession();
            session.removeAttribute("idaccount");
        }else{
            request.setAttribute("password",password);
            request.setAttribute("repassword",repassword);
            request.getRequestDispatcher("editpass.jsp").forward(request,response);
            System.out.println("password sai: "+password);
            System.out.println("repassword sai: "+repassword);
            System.out.println("id re: "+id);
        }



        System.out.println(id);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
