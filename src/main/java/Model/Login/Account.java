package Model.Login;

public class Account {
    private int id;
    private String username;
    private String password;
    private int akou;
    private String address;

    public Account(String username, String password){
        this.username = username;
        this.password = password;
    }

    public Account(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public Account(String username, String password, int akou, String address) {
        this.username = username;
        this.password = password;
        this.akou = akou;
        this.address = address;
    }

    public Account(String username, String password, int akou) {
        this.username = username;
        this.password = password;
        this.akou = akou;
    }

    public Account(int id, String username, String password, int akou, String address) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.akou = akou;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAkou() {
        return akou;
    }

    public void setAkou(int akou) {
        this.akou = akou;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    //    @Override
//    public String toString() {
//        return "Account{" +
//                "id=" + id +
//                ", username='" + username + '\'' +
//                ", password='" + password + '\'' +
//                '}';
//    }

}
