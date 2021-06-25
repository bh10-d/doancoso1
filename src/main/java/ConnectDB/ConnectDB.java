package ConnectDB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {

    private Connection connection;
    private String dbname = "databaseform";
    private String url = "jdbc:mysql://localhost:3306/"+dbname;
    private String username = "root";
    private String password = "";

    public ConnectDB() {
        System.out.println("Connecting datdabase.....");

        try{
//            DriverManager.registerDriver(new com.mysql.jdbc.Driver ());
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(url,username,password);
            System.out.println("Database connected.....");
        }catch (SQLException | ClassNotFoundException e){
            throw new IllegalStateException("cannot connect the database!", e);
        }
    }

    public Connection getCon(){
        return connection;
    }
}
