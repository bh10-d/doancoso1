package DAO;

import ConnectDB.ConnectDB;
import Entity.Order;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManaOrder {
    ConnectDB connectDB = new ConnectDB();
    PreparedStatement ps = null;

    public void ImportOrder(String idorder, String iduser, String codeorder, String nameorder, float totalpriceorder, String countorder){
        try {
            String query = "";
            ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,idorder);
            ps.setString(2,iduser);
            ps.setString(3,codeorder);
            ps.setString(4,nameorder);
            ps.setFloat(5,totalpriceorder);
            ps.setString(6,countorder);
            ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public List<Order> ExportOrder(){
        List<Order> list = new ArrayList<>();
        try {
            String query = "";
            ps = connectDB.getCon().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Order(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getFloat(5), rs.getString(6)));
            }
            if (list != null){
                return list;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
