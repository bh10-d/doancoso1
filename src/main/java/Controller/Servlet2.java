//package Controller;
//
//import Model.Login.Account;
//import Model.Login.ConnectDB;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.sql.*;
//import java.util.ArrayList;
//
//@WebServlet(name = "Servlet2", value = "/Servlet2")
//public class Servlet2 extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        ConnectDB a = new ConnectDB();
//        String query = "select * from account limit 2";
//        List<Account> li = new ArrayList<Account>();
//
//        Statement b = null;
//        try {
////            b = a.getCon().prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE,
////                    ResultSet.CONCUR_UPDATABLE);
//            b  = a.getCon().createStatement();
//
//
//
//
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//
//
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//}
