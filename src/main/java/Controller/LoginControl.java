package Controller;

import Entity.Account;
import DAO.LoginDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginControl", value = "/Login")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String username = request.getParameter("yourusername");
            String password = request.getParameter("yourpassword");
            LoginDao loginDao =new LoginDao();
            Account account = loginDao.checkLogin(username,password);
            HttpSession session = request.getSession();
            if(account == null){
                request.getRequestDispatcher("trangchu.jsp").forward(request,response);
            }else{
                Cookie usercookie = new Cookie("usercookie",account.getUsername());
                Cookie passcookie = new Cookie("passcookie",account.getPassword());
                if (request.getParameter("remember")!=null){
                    usercookie.setMaxAge(60*60);
                    passcookie.setMaxAge(60*60);
                } else{
                    usercookie.setMaxAge(0);
                    passcookie.setMaxAge(0);
                }
                response.addCookie(usercookie);
                response.addCookie(passcookie);
                session.setAttribute("akou",account.getAkou());
                session.setAttribute("account",account.getUsername());
                session.setAttribute("id",account.getId());
                request.getRequestDispatcher("trangchu.jsp").forward(request,response);
            }

//            if(account != null){
//                session.setAttribute("akou",account.getAkou());
//                session.setAttribute("account",account.getUsername());
//                session.setAttribute("id",account.getId());
////                session.setAttribute("username",username);
////                session.setAttribute("password",password);
////                session.setAttribute("email",account.getEmail());
//            }
//            request.getRequestDispatcher("trangchu.jsp").forward(request,response);
            System.out.println(request.getParameter("remember"));
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        request.setAttribute("username",username);
        doGet(request,response);

    }
}
