package Model.Page;

import Model.Login.Account;
import Model.Login.ConnectDB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class test {

    public List<MStore> listdb(){
//        int id = 3;
        List<MStore> list = new ArrayList<>();
        try {
            ConnectDB connect = new ConnectDB();
            Statement stmt = connect.getCon().createStatement();
            PreparedStatement ps = connect.getCon().prepareStatement("select * from products /*where idOfUser = ?*/");
//            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
//            ResultSet rs = stmt.executeQuery("select * from products where id = ?");

            while (rs.next()){
                list.add(new MStore(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(5),rs.getString(8)));
            }
            if (list != null){
                return list;
            }
            connect.getCon().close();
        } catch (
                SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

//    public static void main(String[] args) {
//        test test = new test();
//        List<MStore> list = test.listdb();
//        for (MStore listt:list
//        ) {
//            System.out.println(listt.toString());
//        }
//    }

}
