package Model.Page;

public class MStore {
    private int idproduct;
    private String name;
    private String type;
    private String imgurl;
    private int price;
    private String description;

    public MStore() {
    }

    public MStore(int idproduct,String name, int price, String description, String imgurl) {
        this.idproduct = idproduct;
        this.name = name;
        this.price = price;
        this.description = description;
        this.imgurl = imgurl;
    }

    public MStore(String name, int price, String description, String imgurl) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.imgurl = imgurl;
    }


    public MStore(String name, String type, String imgurl, int price, String description) {
        this.name = name;
        this.type = type;
        this.imgurl = imgurl;
        this.price = price;
        this.description = description;
    }

    public int getIdproduct() {
        return idproduct;
    }

    public void setIdproduct(int idproduct) {
        this.idproduct = idproduct;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


//    @Override
//    public String toString() {
//        return "MStore{" +
//                "name='" + name + '\'' +
//                ", price=" + price +
//                ", description='" + description + '\'' +
//                '}';
//    }
}
