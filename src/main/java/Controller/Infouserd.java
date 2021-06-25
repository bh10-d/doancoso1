package Controller;

import DAO.ManaAccount;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Infouserd", value = "/Infouserd")
public class Infouserd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();

        String id = String.valueOf(session.getAttribute("id"));



        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String number = request.getParameter("number");
        String sex = "nam";

        if(number == ""){
            number = null;
        }

        ManaAccount inUser = new ManaAccount();
        inUser.InforUserd(id,firstname,lastname,dob,address,email,number,sex);


        System.out.println(firstname);
        System.out.println(lastname);
        System.out.println(dob);
        System.out.println(address);
        System.out.println(email);
        System.out.println(number);
        System.out.println(sex);

        request.getRequestDispatcher("Infouser").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
