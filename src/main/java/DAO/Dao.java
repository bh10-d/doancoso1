package DAO;

import ConnectDB.ConnectDB;
import Entity.Order;
import Entity.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Dao {
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Product getProduct(String txt) {
        String query = "select * from products where id = ?";
        List<Product> list = new ArrayList<>();
        try {
            ConnectDB connectDB = new ConnectDB();
            ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1, txt);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(8),
                        rs.getDouble(3),
                        1);
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void order(String iduser,String codeorder,String statusorder,String totalprice, String count, String listproduct){
        try {
            String query = "INSERT INTO ordercate (iduser,codeorder,statusorder ,totalpriceorder, countorder, listproduct) VALUES (?, ?, ?, ?, ?, ?);";

            ConnectDB connectDB = new ConnectDB();
            ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,iduser);
            ps.setString(2,codeorder);
            ps.setString(3,statusorder);
            ps.setString(4,totalprice);
            ps.setString(5,count);
            ps.setString(6,listproduct);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public List<Order> listorderad(){
        try {
            List<Order> list = new ArrayList<>();
            String query = "SELECT * FROM ordercate";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Order(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getFloat(5),rs.getString(6),rs.getString(7)));
            }
            if (list != null){
                return list;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

//    public static void main(String[] args) {
//        Dao dao = new Dao();
//        List<Order> list = dao.listorderidorder("1");
//        List<Product> listttt =  new ArrayList<>();
////        System.out.println(list);
//        for (Order listt: list
//             ) {
////            System.out.println(listt.getListproduct());
//            String[] txt = listt.getListproduct().split("-");
//            for (String s:txt
//                 ) {
////                System.out.println(dao.getProduct(s));
//                listttt.add(dao.getProduct(s));
//            }
//        }
//        System.out.println(listttt);
//    }

    public List<Order> listorderidorder(String id){
        try {
            List<Order> list = new ArrayList<>();
            String query = "SELECT * FROM ordercate WHERE idorder = ?";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Order(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getFloat(5),rs.getString(6),rs.getString(7)));
            }
            if (list != null){
                return list;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public List<Order> listorder(String id){
        try {
            List<Order> list = new ArrayList<>();
            String query = "SELECT * FROM ordercate WHERE iduser = ?";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Order(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getFloat(5),rs.getString(6),rs.getString(7)));
            }
            if (list != null){
                return list;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public void editstatus(String idorder,String status){
        try {
            String query = "UPDATE ordercate SET statusorder = ? WHERE idorder = ?;";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,status);
            ps.setString(2,idorder);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    public void deleteorder(String idorder){
        try {
            String query = "DELETE FROM ordercate WHERE idorder = ?";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,idorder);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
