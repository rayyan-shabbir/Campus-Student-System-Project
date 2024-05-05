import java.sql.*;

public class LoginDAO {
    public String validateUser(LoginBean lb) {
        String email = lb.getEmail();
        String password = lb.getPassword();

        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://127.0.0.1/cms";

            Connection con = DriverManager.getConnection(url, "root", "root");

            Statement st = con.createStatement();

            String query = "Select * from validation where email='" + email + "' and password='" + password + "'";

            ResultSet rs = st.executeQuery(query);

            if (rs.next()) {
                String user_type = rs.getString("user_type");

                if(user_type.equals("Student")) {
                    return "Student_role";
                } else if (user_type.equals("Teacher")) {
                    return "Teacher_role";
                } else if (user_type.equals("Admin")) {
                    return "Admin_role";
                }
            }

            else {
                return "Invalid User Credentials";
            }

        } catch (Exception e) {

            System.out.println("Exception: " + e.getMessage());
            e.printStackTrace();
        }

        return null;
    }
}
