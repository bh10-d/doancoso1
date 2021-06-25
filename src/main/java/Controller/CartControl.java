package Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CartControl", value = "/cart")
public class CartControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        Cookie arr[] = request.getCookies();
        String txt = "";
        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                txt = txt + o.getValue();
                o.setMaxAge(0);
                response.addCookie(o);System.out.println("txt: "+txt);
                System.out.println(id);
                System.out.println("id o: "+o.getValue());
            }
        }
        if (txt.isEmpty()) {
            txt = id;
        } else {
            txt = txt + "-" + id;
            System.out.println("txt if: "+txt);
        }
            Cookie c = new Cookie("id", txt);

        c.setMaxAge(60 * 60);
        response.addCookie(c);
        response.sendRedirect("print");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
