import java.util.ArrayList;
import java.util.List;

public class UserService {
    List<User> users;

    public UserService() {
        users = new ArrayList<>();
        users.add(new User(1,"Mai Văn Hoàn","1983-08-20","Hà Nội", "images.jpg"));
        users.add(new User(2,"Nguyễn Văn Nam","1983-08-21","Bắc Giang", "images.jpg"));
        users.add(new User(3,"Nguyễn Thái Hòa","1983-08-22","Nam Định", "images.jpg"));
        users.add(new User(4,"Trần Đăng Khoa","1983-08-22","Hà Tây", "images.jpg"));
        users.add(new User(5,"Nguyễn Đình Thi","1983-08-19","Hà Nội", "images.jpg"));
    }

    public List<User> getUsers() {
        return users;
    }
}
