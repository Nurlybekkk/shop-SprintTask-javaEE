package kz.bitlab.sprintTask.shopProject.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBManager {

    private static final ArrayList<Items> items = new ArrayList<>();
    private static final ArrayList<Users> users = new ArrayList<>();
    private static Long id = 7l;

    static {
        items.add(new Items(1l,"Dell XPS 13","8GB RAM\n13.4 inches\nIntel Core i5-i7\n256GB-2TB SSD",999.99));
        items.add(new Items(2l,"Apple MacBook Pro","16GB RAM\n13.3 inches\nApple M1 chip with 8-core CPU\n256GB-2TB SSD",1299.99));
        items.add(new Items(3l,"HP Spectre x360","8GB-16GB RAM\n13.3 inches\nIntel Core i5-i7\n256GB-2TB SSD",1199.99));
        items.add(new Items(4l,"ASUS ROG Zephyrus","8GB-16GB RAM\n14 inches\nAMD Ryzen 7 4800HS\n512GB-1TB SSD",1099.99));
        items.add(new Items(5l,"Lenovo ThinkPad X1 Carbon","8GB-16GB RAM\n14 inches\nIntel Core i5-i7\n256GB-2TB SSD",1399.99));
        items.add(new Items(6l,"Microsoft Surface Laptop 4","8GB-32GB RAM\n13.5 inches\nAMD Ryzen 5 4680U\n256GB-1TB SSD",999.99));
    }

//    static {
//        users.add(new Users(1l,"nnnurlybek2003@gmail.com","qwerty123","Nazarov Nurlybek"));
//        users.add(new Users(2l,"cronaldo7@mail.ru","cron7777","Cristiano Ronaldo"));
//        users.add(new Users(3l,"serikberik@gmail.com","serik001","Serik Berik"));
//        users.add(new Users(4l,"nnazarbayev","elbasy01","Nursultan Nazarbayev"));
//        users.add(new Users(5l,"iloveyou@icloud.com","iloveyou4ever","No Name"));
//        users.add(new Users(6l,"capitanamerica@mail.ru","america123","Nazarov Nurlybek"));
//    }

    public static ArrayList<Items> getAllItems(){
        return items;
    }

    private static Connection connection;

    static {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/shop-project-ee", "root", ""
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

        public static Users getUser (String email){
//        for(Users user : users){
//            if(user.getEmail().equals(email)){
//                return user;
//            }
//        }
//        return null;

            Users user = null;
            try {

                PreparedStatement statement = connection.prepareStatement("" +
                        "SELECT * FROM users WHERE email = ?");
                statement.setString(1, email);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    user = new Users();
                    user.setId(resultSet.getLong("id"));
                    user.setEmail(resultSet.getString("email"));
                    user.setPassword(resultSet.getString("password"));
                    user.setFullName(resultSet.getString("full_name"));
                }
                statement.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return user;

        }
}
