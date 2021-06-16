package Model.Page;

import Model.Login.ConnectDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DelProduct {
    private PreparedStatement ps = null;

    public void del(int id){
        try {
            String query = "DELETE FROM `products` WHERE id = ?";
            ConnectDB connectDB = new ConnectDB();
            ps = connectDB.getCon().prepareStatement(query);
            ps.setInt(1,id);
            ps.executeUpdate();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }


    }
}
