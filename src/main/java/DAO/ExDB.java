package DAO;

import ConnectDB.ConnectDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ExDB {
        private Connection con = null;
        private PreparedStatement ps= null;

        public void insert(String name,String price,String title,String des,int idoc,int iduser,String immf){
            try {
                String query = "insert into products(name,price,title,description,idOfCat,idOfUser,Imageurl)VALUES(?,?,?,?,?,?,?);";
                ConnectDB connectDB = new ConnectDB();
                ps = connectDB.getCon().prepareStatement(query);
                ps.setString(1,name);
                ps.setString(2,price);
                ps.setString(3,title);
                ps.setString(4,des);
                ps.setInt(5,idoc);
                ps.setInt(6,iduser);
                ps.setString(7,immf);
                ps.executeUpdate();

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }


        }





}
