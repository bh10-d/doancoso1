//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.nio.file.Files;
//import java.nio.file.Path;
//
//
//@MultipartConfig
//@WebServlet(name = "load", value = "/load")
//public class load extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getRequestDispatcher("load.jsp").forward(request,response);
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        try{
//            response.setContentType("text/html");
//            String id = request.getParameter("id");
//            String name = request.getParameter("name");
//
//            Part part = request.getPart("photo");
//
//            System.out.println("ahgsdjhgashjdg:"+id);
//            System.out.println("ahgsdjhgashjdg:"+name);
//
//            System.out.println("ahgsdjhgashjdg:"+part);
//
//            String realPath = request.getServletContext().getRealPath("/Image");
//            String filename = Path.of(part.getSubmittedFileName()).getFileName().toString();
//
//            if (!Files.exists(Path.of(realPath))){
//                Files.createDirectories(Path.of(realPath));
//            }
//            part.write(realPath+"/"+filename);
//            try(PrintWriter out = response.getWriter()){
//                out.println("<h2>id: "+id+"</h2>");
//                out.println("<h2>name: "+name+"</h2>");
//                out.println("<img src='/Image/"+filename+"'>");
//            }catch (Exception e){
//                e.printStackTrace();
//            }
//
//
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//    }
//}
