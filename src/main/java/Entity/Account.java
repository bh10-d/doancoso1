package Entity;

public class Account {
    private int id;
    private String username;
    private String password;
    private int akou;
    private String address;
    private String email;
    private int number;
    private String sex;
    private String DoB;
    private String firstname;
    private String lastname;

    public Account(){

    }

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

    public Account(int id, String username, String password, int akou, String address, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.akou = akou;
        this.address = address;
        this.email = email;
    }

    public Account(int id,int akou, String email, String sex, String address, int number,String dob, String firstname, String lastname) {
        this.id = id;
        this.akou = akou;
        this.email = email;
        this.sex = sex;
        this.address = address;
        this.number = number;
        this.DoB = dob;
        this.firstname = firstname;
        this.lastname = lastname;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDoB() {
        return DoB;
    }

    public void setDoB(String doB) {
        DoB = doB;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
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
