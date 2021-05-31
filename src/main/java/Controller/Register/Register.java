package Controller.Register;

import Model.Regis;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.nio.file.Path;

@MultipartConfig
@WebServlet(name = "Register", value = "/Register")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        request.getRequestDispatcher("trangchu.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String username = request.getParameter("uname");
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");
        String rpassword = request.getParameter("rpwd");



        Regis regis = new Regis();
        regis.regis(username,password,email);



        System.out.println(firstname);
        System.out.println(lastname);
        System.out.println(username);
        System.out.println(email);
        System.out.println(password);
        System.out.println(rpassword);


        request.getRequestDispatcher("trangchu.jsp").forward(request,response);

    }
}
