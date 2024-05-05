import java.sql.*;

public class SignupDAO {
    public String insert(SignupBean sb) {
        String email = sb.getEmail();
        String password = sb.getPassword();
        String name = sb.getName();
        long phone = sb.getPhone();
        String user = sb.getUser();
        
        String dob;
        if(sb.getDOB() == null) {
            dob = "";
        } else {
            dob = sb.getDOB();
        }

        String sem;
        if(sb.getSem() == null) {
            sem = "";
        } else {
            sem = sb.getSem();
        }

        String query = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://127.0.0.1/cms";

            Connection con = DriverManager.getConnection(url, "root", "root");

            Statement st = con.createStatement();

            query = "insert into validation(email, name, dob, semester, password, phone_no, user_type) values('" + email + "', '" + name + "', '" + dob + "', '" + sem + "' , '" + password + "'," + phone + ", '" + user + "')";
            int rs = st.executeUpdate(query);

            

            if (rs > 0) {
                return "success";
            } else  {
                return "fail";
            }

        } catch (Exception e) {

            System.out.println("Exception: " + e.getMessage());
            e.printStackTrace();
        }

        return query;
    }
}
