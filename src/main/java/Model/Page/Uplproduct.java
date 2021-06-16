package Model.Page;

import Model.Login.Account;
import Model.Login.ConnectDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Uplproduct {

    public MStore Up(String name, String type, String imgurl, int price, String description){
        try {
//            String query = "select * from person where PUsername = ? and Ppassword = ?";
            String query = "select * from products where id = ? ";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,"3");
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                return new MStore(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(5),rs.getString(8));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }


//    public static void main(String[] args) {
//        Uplproduct uplproduct = new Uplproduct();
//
//        MStore mStore = uplproduct.Up("abc", "abc", "abc", 10, "abc");
//
//        System.out.println(mStore.getName());
//    }
}
