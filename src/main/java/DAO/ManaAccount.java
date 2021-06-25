package DAO;

import ConnectDB.ConnectDB;
import Entity.Account;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ManaAccount {
    ConnectDB connectDB =  new ConnectDB();
    PreparedStatement ps = null;

    // dang ki tai khoan
    public void regis(String username, String password, String email){
        try {
            String query = "INSERT INTO accounthieu(AUsername, APassword,email) VALUES (?,?,?)";
            ps = connectDB.getCon().prepareStatement(query);
//            ps.setString(1,firstname);
//            ps.setString(2,lastname);
            ps.setString(1,username);
            ps.setString(2,password);
            ps.setString(3,email);

            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    // xoa tai khoan (admin)
    public void DeleteAccount(String id){
        try {
            String query = "DELETE FROM accounthieu WHERE id = ?";
            ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    // chinh sua mat khau user (admin)
    public void EditAccount(String id,String password){

        try {
            String query = "update accounthieu set APassword = ? where IDUser = ?";
            ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,password);
            ps.setString(2,id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    // user chinh sua thong tin ca nhan
    public void InforUserd(String id, String firstname, String lastname, String dob, String address, String email, String number, String sex){
        try {
            String query = "UPDATE accounthieu SET firstname = ?, lastname = ?, DoB = ?, Address = ?, email = ?, Pnumber = ?, sex = ? WHERE IDUser= ?";
            ps = connectDB.getCon().prepareStatement(query);
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

    //in thong tin user ra trang chinh sua thong tin ca nhan cua user
    public Account InfoUser(String id){
        try {
            String query = "SELECT * FROM accounthieu WHERE IDUser = ?";
            ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();
            Account account = null;
            while(rs.next()){
                return account = new Account(rs.getInt(1),
                        rs.getInt(4),
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

}
