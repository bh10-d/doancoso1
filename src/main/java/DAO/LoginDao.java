package DAO;

import ConnectDB.ConnectDB;
//import ConnectSQL.ConnectDB;
import Entity.Account;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoginDao {

    public Account checkLogin(String username, String password){
        try {
//            String query = "select * from person where PUsername = ? and Ppassword = ?";
            String query = "select * from accounthieu where AUsername = ? and APassword = ?";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,username);
            ps.setString(2,password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Account account = new Account(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4), rs.getString(5),rs.getString(7));
                return account;
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
    public List<Account> manageraccount(){

        List<Account> list = new ArrayList<>();
        try {
            String query = "SELECT IDUser,AUsername,APassword FROM accounthieu WHERE IDUser>2";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Account(rs.getInt(1),
                                        rs.getString(2),
                                        rs.getString(3)));
            }
            if(list!=null){
                return list;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


        return null;
    }

//    public static void main(String[] args) {
////        LoginDao loginDao = new LoginDao();
////        Account account = loginDao.checkLogin("bhieu","bhieu");
////        System.out.println(account);
////        System.out.println(account.getId());
//
//        LoginDao loginDao = new LoginDao();
//        List<Account> list = loginDao.manageraccount();
//        for (Account account: list
//             ) {
//            System.out.println(account.getId());
//            System.out.println(account.getUsername());
//            System.out.println(account.getPassword());
//        }
//
//
//    }
}
