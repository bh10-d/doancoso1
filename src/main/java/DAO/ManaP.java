package DAO;

import ConnectDB.ConnectDB;
import Entity.MStore;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManaP {
    ConnectDB connectDB = new ConnectDB();
    PreparedStatement ps = null;

    // product do admin quan ly va in ra cua hang
//    public List<MStore> listdb(){
//        List<MStore> list = new ArrayList<>();
//        try {
//            PreparedStatement ps = connectDB.getCon().prepareStatement("select * from products");
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()){
//                list.add(new MStore(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(5),rs.getString(8)));
//            }
//            if (list != null){
//                return list;
//            }
//            connectDB.getCon().close();
//        } catch (
//                SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        return null;
//    }
    public List<MStore> listdb(){
        List<MStore> list = new ArrayList<>();
        try {
            String query = "SELECT products.id,products.name,category.cname,products.price,products.description,products.Imageurl FROM category INNER JOIN products ON products.idOfCat=category.cid;";
            ps = connectDB.getCon().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(new MStore(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6)));
            }
            if (list != null){
                return list;
            }
            connectDB.getCon().close();
        } catch (
                SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

//    public static void main(String[] args) {
//        ManaP manaP = new ManaP();
//        List<MStore> list = new ArrayList<>();
//        list = manaP.listdb();
//        System.out.println(list);
//    }

    // product tung user up
//    public List<MStore> listproduct(String id){
//        List<MStore> list = new ArrayList<>();
//        try {
//            ps = connectDB.getCon().prepareStatement("select * from products where idOfUser = ?");
//            ps.setString(1,id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()){
//                list.add(new MStore(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(5),rs.getString(6),rs.getString(8)));
//            }
//            if (list != null){
//                return list;
//            }
//            connectDB.getCon().close();
//        } catch (
//                SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        return null;
//    }
    public List<MStore> listproduct(String id){
        List<MStore> list = new ArrayList<>();
        try {
            String query = "SELECT products.id,products.name,category.cname,products.price,products.description,products.Imageurl FROM category INNER JOIN products ON products.idOfCat=category.cid WHERE products.idOfUser = ?;";
            ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(new MStore(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6)));
            }
            if (list != null){
                return list;
            }
            connectDB.getCon().close();
        } catch (
                SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    //search
    public List<MStore> search(int data){
        try {
            List<MStore>list = new ArrayList<>();
            String query = "SELECT * FROM products WHERE idOfCat = ?";
            ps = connectDB.getCon().prepareStatement(query);
            ps.setInt(1,data);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new MStore(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(5),rs.getString(6),rs.getString(8)));
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
//        ManaP manaP = new ManaP();
//        System.out.println(manaP.search(3));
//    }

    //edit product
    public void edit(String namep,String pricep, String typep, String detailp, String imgurl, String idp){
        try {
            String query = "UPDATE products SET name = ?, price = ?, title = ?, description = ?, Imageurl = ? WHERE id= ?";
            ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,namep);
            ps.setString(2,pricep);
            ps.setString(3,typep);
            ps.setString(4,detailp);
            ps.setString(5,imgurl);
            ps.setString(6,idp);
            ps.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    //xoa product
    public void del(int id){
        try {
            String query = "DELETE FROM `products` WHERE id = ?";
            ps = connectDB.getCon().prepareStatement(query);
            ps.setInt(1,id);
            ps.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}
