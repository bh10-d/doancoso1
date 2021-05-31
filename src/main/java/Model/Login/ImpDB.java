package Model.Login;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ImpDB {

    public List<Account> impDBS(){
        List<Account> list = new ArrayList<>();
        try {
            ConnectDB connect = new ConnectDB();
            Statement stmt = connect.getCon().createStatement();
            ResultSet rs = stmt.executeQuery("select * from person");

            while (rs.next()){
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
            connect.getCon().close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }


    public Account ImpDB(){
        try {
            ConnectDB connect = new ConnectDB();
            Statement stmt = connect.getCon().createStatement();
            ResultSet rs = stmt.executeQuery("select * from person ");
            while (rs.next()){
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
            connect.getCon().close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }



}
