package DAO;

import ConnectDB.ConnectDB;
import Entity.Product;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
}
