package Controller;

import Model.EditProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@MultipartConfig
@WebServlet(name = "EProduct", value = "/EProduct")
public class EProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("idpp");
        System.out.println(id);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            response.setCharacterEncoding("UTF-8");
            request.setCharacterEncoding("UTF-8");
            String id = request.getParameter("id");

            String namep = request.getParameter("namep");
            String typep = request.getParameter("typep");
            String pricep = request.getParameter("pricep");
            String detailp = request.getParameter("detailp");
            Part part =request.getPart("photo");
            String realPath = request.getServletContext().getRealPath("/Image");
            String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
            if (!Files.exists(Path.of(realPath))){
                Files.createDirectories(Path.of(realPath));
            }

            String path = "Image/"+filename;

            EditProduct product = new EditProduct();
            product.edit(namep,pricep,typep,detailp,path,id);


            request.getRequestDispatcher("ManaControl").forward(request,response);

            System.out.println("id:"+id);
            System.out.println(namep);
            System.out.println(typep);
            System.out.println(pricep);
            System.out.println(detailp);
            System.out.println(path);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

}
