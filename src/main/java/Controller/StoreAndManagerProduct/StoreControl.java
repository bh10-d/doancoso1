package Controller.StoreAndManagerProduct;

import Model.Page.MStore;
import Model.Page.Uplproduct;
import Model.Page.test;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StoreControl", value = "/StoreControl")
public class StoreControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        String namep = request.getParameter("namep");
//        String typep = request.getParameter("typep");
//        String photo = null;
//        String detailp = request.getParameter("detailp");
//        int price = 0;
//
//        Uplproduct uplproduct = new Uplproduct();
//
//        MStore mStore = uplproduct.Up(namep, typep, photo, price, detailp);
//
//        response.sendRedirect("test.jsp");
        test test = new test();
        List<MStore> list = test.listdb();
        request.setAttribute("productlist",list); // t đẩy cả 1 cục lên luôn nè - rồi - vấn đề là sao

//        for (MStore listt: list
//             ) {
//            request.setAttribute("namep",listt.getName());
//            request.setAttribute("price",listt.getPrice());
//            request.setAttribute("detail",listt.getDescription());
//        }


        request.getRequestDispatcher("RauCu.jsp").forward(request,response);




    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
