package DAO;

import ConnectDB.ConnectDB;
import Entity.MStore;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class Filter {

    public List<MStore> idcate(){
        try {
            List<MStore> list = new ArrayList<>();
            String query = "SELECT DISTINCT cname FROM category";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                list.add(new MStore(rs.getString(1)));
            }
            if (list != null){
                return list;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
    public int num(String data){
        try {
            String query = "SELECT * FROM category WHERE cname = ?";
            ConnectDB connectDB = new ConnectDB();
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,data);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return 0;
    }

    public String convert(String data){
        String convert = data.toLowerCase(Locale.ROOT);
        if(convert.equals("củ")){
            convert = "rau củ";
        }
        if (convert.equals("rau")){
            convert = "rau củ";
        }
        if (convert.equals("trái")){
            convert = "trái cây";
        }
        return convert;
    }

    public int convertnum(String data){
        Filter filter = new Filter();
        int i=0;
        for (MStore list: filter.idcate()
             ) {
            if (data.equals(list.toString())){
                i = filter.num(data);
            }
        }
        return i;
    }


//    public static void main(String[] args) {
//        Filter filter = new Filter();
//        System.out.println(filter.convert("Trái cây"));
//        System.out.println(filter.convertnum(filter.convert("thịt trứng")));
//    }


}
