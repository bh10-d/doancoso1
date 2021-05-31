package Model;

import Model.Login.ConnectDB;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EditProduct {
    private PreparedStatement ps = null;
    public void edit(String namep,String pricep, String typep, String detailp, String imgurl, String idp){

        try {
            String query = "UPDATE products SET name = ?, price = ?, title = ?, description = ?, Imageurl = ? WHERE id= ?";
            ConnectDB connectDB = new ConnectDB();
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
}
