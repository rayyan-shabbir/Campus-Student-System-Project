import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class login extends HttpServlet {

    // Process the HTTP Get request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        LoginBean lb = new LoginBean();

        lb.setEmail(email);
        lb.setPassword(password);

        LoginDAO ldao = new LoginDAO();

        try {
            String userValidate = ldao.validateUser(lb);

            if (userValidate.equals("Admin_role")) {
                HttpSession ses = request.getSession(true);
                request.setAttribute("email", email);
                ses.setAttribute("Admin", email);

                request.getRequestDispatcher("/Admin.jsp").forward(request, response);

                out.println("<h1> Welcome Admin </h1>");
            } else if (userValidate.equals("Teacher_role")) {

                HttpSession ses = request.getSession(true);
                request.setAttribute("email", email);
                ses.setAttribute("Teacher", email);

                request.getRequestDispatcher("/Teacher.jsp").forward(request, response);

                out.println("<h1> Welcome Teacher </h1>");
            } else if (userValidate.equals("Student_role")) {
                Connection con = null;
                HttpSession ses = request.getSession(true);
                String semester = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");

                    String url = "jdbc:mysql://127.0.0.1/cms";

                    con = DriverManager.getConnection(url, "root", "root");

                    Statement st = con.createStatement();

                    String query = "Select * from validation where email='" + email + "' and password='" + password
                            + "'";

                    ResultSet rs = st.executeQuery(query);

                    if (rs.next()) {
                        semester = rs.getString("semester");
                    }

                    st.close();

                } catch (Exception e) {

                    System.out.println("Exception: " + e.getMessage());
                    e.printStackTrace();
                }

                request.setAttribute("email", email);
                request.setAttribute("sem", semester);
                ses.setAttribute("Student", email);

                int i = 1;
                String name;
                try {
                    Statement st = con.createStatement();

                    String query = "Select * from course where semester='" + semester + "'";

                    ResultSet rs = st.executeQuery(query);
                    // i = 1;

                    while (rs.next()) {
                        name = rs.getString("name");

                        request.setAttribute("course" + i, name);
                        i++;
                    }

                    for (int j = i; j <= 6; j++) {
                        request.setAttribute("course" + j, "No Course Added");

                    }

                } catch (Exception e) {
                    System.out.println("Exception: " + e.getMessage());
                    e.printStackTrace();
                }

                request.setAttribute("iter", i);

                request.getRequestDispatcher("/Student.jsp").forward(request, response);

                out.println("<h1> Welcome Student </h1>");
            } else {
                request.setAttribute("errMsg", "Email or Password is incorrect. Please Try again!");
                request.getRequestDispatcher("/home.jsp").forward(request, response);
                out.println("<h1> Invalid Credentials </h1>");
            }

        } catch (Exception ex) {

        }

        // out.println("<html>");
        // out.println("<head><title>Response</title></head>");
        // out.println("<body bgcolor=\"#ffffff\">");
        // out.println("<h1>Home Page </h1>");
        // out.println("<h3>" + email + " " + password + "</h3>");

        // System.out.println("<h1>Record found</h1>");

        // String name = rs.getString("email");

        // System.out.println("<h1>User Name: " + name + " </h1>");

        // out.println("</body></html>");
        // st.close();
        // con.close();
    }

}
