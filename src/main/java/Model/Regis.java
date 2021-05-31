package Model;

import Model.Login.ConnectDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Regis {
    private PreparedStatement ps = null;
//    public void regis(String firstname, String lastname, String username, String email, String password)
    public void regis(String username, String password, String email){


        try {
            ConnectDB connectDB = new ConnectDB();
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
}
