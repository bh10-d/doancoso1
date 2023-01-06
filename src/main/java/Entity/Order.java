package Entity;

public class Order {
    private String idorder;
    private String iduser;
    private String codeorder;
    private String statusorder;
    private float totalpriceorder;
    private String countorder;
    private String listproduct;

    public Order(String idorder,String iduser,String codeorder, String statusorder, float totalpriceorder, String countorder, String listproduct) {
        this.idorder = idorder;
        this.iduser = iduser;
        this.codeorder = codeorder;
        this.statusorder = statusorder;
        this.totalpriceorder = totalpriceorder;
        this.countorder = countorder;
        this.listproduct = listproduct;
    }

    public Order(String idorder, String iduser, String codeorder, String statusorder, float totalpriceorder, String countorder) {
        this.idorder = idorder;
        this.iduser = iduser;
        this.codeorder = codeorder;
        this.statusorder = statusorder;
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

    public String getStatusorder() {
        return statusorder;
    }

    public void setStatusorder(String statusorder) {
        this.statusorder = statusorder;
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

    public String getListproduct() {
        return listproduct;
    }

    public void setListproduct(String listproduct) {
        this.listproduct = listproduct;
    }

}
