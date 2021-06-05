package Model.Page;

import Model.Login.Account;
import Model.Login.ConnectDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InUser {

    public void InforUserd(String id, String firstname, String lastname, String dob, String address, String email, String number, String sex){


        try {
            String query = "UPDATE accounthieu SET firstname = ?, lastname = ?, DoB = ?, Address = ?, email = ?, Pnumber = ?, sex = ? WHERE IDUser= ?";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,firstname);
            ps.setString(2,lastname);
            ps.setString(3,dob);
            ps.setString(4,address);
            ps.setString(5,email);
            ps.setString(6,number);
            ps.setString(7,sex);
            ps.setString(8,id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public Account InfoUser(String id){
        try {
            String query = "SELECT * FROM accounthieu WHERE IDUser = ?";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            Account account = null;
            while(rs.next()){
                return account = new Account(rs.getInt(1),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

//    public static void main(String[] args) {
//        InUser inUser = new InUser();
////        inUser.InfoUser("3");
//        Account account = inUser.InfoUser("3");
//        System.out.println(account.getEmail());
//        System.out.println(account.getFirstname());
//        System.out.println(account.getLastname());
//        System.out.println(account.getSex());
//        System.out.println(account.getDoB());
//    }

}
