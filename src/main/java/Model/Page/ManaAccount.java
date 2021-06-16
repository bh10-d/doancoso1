package Model.Page;

import Model.Login.ConnectDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ManaAccount {

    public void DeleteAccount(String id){
        try {
            String query = "";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public void EditAccount(String id,String password){

        try {
            String query = "";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ps.setString(2,password);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

}
