package Controller.Login;

import Model.Login.Account;
import Model.Login.LoginDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginControl", value = "/Login")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
            String username = request.getParameter("yourusername");
            String password = request.getParameter("yourpassword");
            System.out.println(password);
            LoginDao loginDao =new LoginDao();
            Account account = loginDao.checkLogin(username,password);
            HttpSession session = request.getSession();
            if(account == null){
                response.sendRedirect("trangchu.jsp");
            }else if (account != null/*account.getUsername().equals("admin")&&account.getPassword().equals("admin")*/   /*account.getAkou() == 0*/){
                response.sendRedirect("trangchu.jsp");
            }
//            else{
//                request.getRequestDispatcher("xinchao.jsp").forward(request,response);
//            }

            session.setAttribute("account",account.getUsername());
            session.setAttribute("id",account.getId());
            session.setAttribute("username",username);

            session.setAttribute("password",password);




            session.setAttribute("email",account.getEmail());

        System.out.println(session.getAttribute("email"));


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        request.setAttribute("username",username);
        doGet(request,response);
    }
}
