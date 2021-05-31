package Controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "Uploadp", value = "/Uploadp")
public class Uploadp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String getFilename = "";
        String showImg = "";
        String getimg1 ="";
        String showimg1 = "";


        try {
            DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
            ServletContext servletContext = this.getServletConfig().getServletContext();
            File getFile = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
            diskFileItemFactory.setRepository(getFile);

            ServletFileUpload servletFileUpload = new ServletFileUpload(diskFileItemFactory);
            List<FileItem> item = servletFileUpload.parseRequest(request);
            Iterator<FileItem> ite = item.iterator();
            while (ite.hasNext()) {
                FileItem items = ite.next();
                getFilename = items.getName();
                getimg1 = items.getFieldName();
                if(getimg1.equals("photo")){
                    showimg1 = items.getName();
                }
                if(getFilename !=null){
                    showImg = getFilename;
                    Path path = Paths.get(getFilename);
                    String getpath = servletContext.getRealPath("/Image");
                    File upload =new File(getpath + "/" + path.getFileName());
                    items.write(upload);
                    System.out.println(getpath + "/" + path.getFileName());
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        String namep = request.getParameter("namep");
        String typep = request.getParameter("typep");
        String detailp = request.getParameter("detailp");

        request.setAttribute("namep",namep);
        request.setAttribute("typep",typep);
        request.setAttribute("img",showimg1);
        request.setAttribute("detailp",detailp);

        request.getRequestDispatcher("managerproduct.jsp").forward(request,response);


    }
}
