package Entity;

public class Order {
    private String idorder;
    private String iduser;
    private String codeorder;
    private String nameorder;
    private float totalpriceorder;
    private String countorder;

    public Order(String codeorder, String nameorder, float totalpriceorder, String countorder) {
        this.codeorder = codeorder;
        this.nameorder = nameorder;
        this.totalpriceorder = totalpriceorder;
        this.countorder = countorder;
    }

    public Order(String idorder, String iduser, String codeorder, String nameorder, float totalpriceorder, String countorder) {
        this.idorder = idorder;
        this.iduser = iduser;
        this.codeorder = codeorder;
        this.nameorder = nameorder;
        this.totalpriceorder = totalpriceorder;
        this.countorder = countorder;
    }

    public String getIdorder() {
        return idorder;
    }

    public void setIdorder(String idorder) {
        this.idorder = idorder;
    }

    public String getIduser() {
        return iduser;
    }

    public void setIduser(String iduser) {
        this.iduser = iduser;
    }

    public String getCodeorder() {
        return codeorder;
    }

    public void setCodeorder(String codeorder) {
        this.codeorder = codeorder;
    }

    public String getNameorder() {
        return nameorder;
    }

    public void setNameorder(String nameorder) {
        this.nameorder = nameorder;
    }

    public float getTotalpriceorder() {
        return totalpriceorder;
    }

    public void setTotalpriceorder(float totalpriceorder) {
        this.totalpriceorder = totalpriceorder;
    }

    public String getCountorder() {
        return countorder;
    }

    public void setCountorder(String countorder) {
        this.countorder = countorder;
    }
}
