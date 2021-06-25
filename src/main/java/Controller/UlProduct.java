//package Controller;
//
//import DAO.ExDB;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.nio.file.Files;
//import java.nio.file.Path;
//
//@MultipartConfig
//
//@WebServlet(name = "UlProduct", value = "/UlProduct")
//public class UlProduct extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        try {
//            response.setCharacterEncoding("UTF-8");
//            request.setCharacterEncoding("UTF-8");
//            String namep = request.getParameter("namep").toString();
//            String typep = request.getParameter("typep").toString();
//            String pricep = request.getParameter("pricep").toString();
//            Part part =request.getPart("photo");
//            String detailp = request.getParameter("detailp").toString();
//            String realPath = request.getServletContext().getRealPath("/Image");
//            String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
//            if (Files.exists(Path.of(realPath))){
//                Files.createDirectories(Path.of(realPath));
//            }
//            part.write(realPath+"/"+filename);
////            part.write("/Image/"+filename);
//            System.out.println(filename);
//            String path = "Image/"+filename;
//            ExDB e = new ExDB();
//            HttpSession ss = request.getSession();
//            String idstr = String.valueOf(ss.getAttribute("id"));
//            int id = Integer.parseInt(idstr);
//
//            e.insert(namep,pricep,typep,detailp,3,id,path);
//
//
////            ss.setAttribute("idproduct",);
//            response.sendRedirect("ManaControl");
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//
//
//    }
//}
