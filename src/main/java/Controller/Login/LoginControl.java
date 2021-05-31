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
                request.getRequestDispatcher("trangchu.jsp").forward(request,response);
            }else if (account != null/*account.getUsername().equals("admin")&&account.getPassword().equals("admin")*/   /*account.getAkou() == 0*/){
                response.sendRedirect("trangchu.jsp");
            }
//            else{
//                request.getRequestDispatcher("xinchao.jsp").forward(request,response);
//            }

            session.setAttribute("account",account.getUsername());
            session.setAttribute("id",account.getId());
            // t bắt id từ lúc đăng nhập thành công
            // sao m ko thêm nguyên cái account mà thêm cái id làm chi :v
            // t suy nghĩ nông cạn quá :v thêm nguyên cái account sau này cần gì lôi ra khỏe chữ mỗi id ko thì hơi chan ;v
            // ok ok
        // giờ giải quyết cho thêm vô dâtbase thành công đã /
        //xong làm cái kia sau
        //okok
        // mà sql của m mô // coi sql cai
            session.setAttribute("username",username);

            session.setAttribute("password",password);




            session.setAttribute("email",account.getAddress());

        System.out.println(session.getAttribute("email"));


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        request.setAttribute("username",username);
        doGet(request,response);
    }
}
