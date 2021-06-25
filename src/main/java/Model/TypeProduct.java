package Model;

import ConnectDB.ConnectDB;
import Entity.MStore;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TypeProduct {

    public List<MStore> idoc(String id){

        List<MStore> list = new ArrayList<>();

        try {
            ConnectDB connectDB = new ConnectDB();
            String query = "select * from category where cid=?";
            PreparedStatement ps = connectDB.getCon().prepareStatement(query);
            ps.setString(1,id);
            ResultSet rs = ps.executeQuery();

            while(rs.next()){
                list.add(new MStore(rs.getString(2)));
            }
            if (list!=null){
                return list;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }



//    public static void main(String[] args) {
//        TypeProduct typeProduct = new TypeProduct();
//        ManaP manaP = new ManaP();
//        List<MStore> listmanap = manaP.listproduct(3);
//
//        List<MStore> list = new ArrayList<>();
//
//
//        for (MStore listt:listmanap
//             ) {
//            list = typeProduct.idoc(listt.getIdoc());
//            for (MStore lisst: list
//                 ) {
//                System.out.println(listt.getName());
//                System.out.println(listt.getType());
//
//            }
//
//        }
//    }

}
