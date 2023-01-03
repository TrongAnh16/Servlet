public class User {
    private int id;
    private String name;
    private String dob;
    private String address;
    private String linkImg;

    public User(int id, String name, String dob, String address, String linkImg) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.linkImg = linkImg;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLinkImg() {
        return linkImg;
    }

    public void setLinkImg(String linkImg) {
        this.linkImg = linkImg;
    }
}
