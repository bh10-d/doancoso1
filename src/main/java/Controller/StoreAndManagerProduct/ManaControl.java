package Controller.StoreAndManagerProduct;

import Model.Page.ManaP;
import Model.Page.MStore;
import Model.Page.test;
import Model.TypeProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ManaControl", value = "/ManaControl")
public class ManaControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String idstr = String.valueOf(session.getAttribute("id"));
//        int id = Integer.parseInt(idstr);

        if(session.getAttribute("akou").equals(0)){
            test test = new test();
            List<MStore> list = test.listdb();
            request.setAttribute("listproduct",list);
        }else{
            ManaP manaP = new ManaP();
            List<MStore> list = manaP.listproduct(idstr);
            request.setAttribute("listproduct",list);
        }
//        TypeProduct typeProduct = new TypeProduct();
//
//        List<MStore> listtype = new ArrayList<>();
//
//
//
//            for (MStore listt:list
//            ) {
//                listtype = typeProduct.idoc(listt.getIdoc());
//                for (MStore lisst:listtype
//                ) {
//
//                    request.setAttribute("listproducttype",listt.getType());
//                    System.out.println("type:     "+lisst.getType());
//                }
//            }


        request.getRequestDispatcher("managerproduct.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
