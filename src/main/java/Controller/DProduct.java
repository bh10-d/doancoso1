package Controller;

import Model.DelProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DProduct", value = "/DProduct")
public class DProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DelProduct delProduct = new DelProduct();

        String idpstr = request.getParameter("idp");
        int idp = Integer.parseInt(idpstr);
        delProduct.del(idp);

        request.getRequestDispatcher("ManaControl").forward(request,response);

        System.out.println(idp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
