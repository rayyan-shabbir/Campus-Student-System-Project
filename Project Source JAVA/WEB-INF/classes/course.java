import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.swing.*;

public class course extends HttpServlet {

    // Process the HTTP Get request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        // get PrintWriter object
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email_id");
        String course = request.getParameter("course_id");

        try {

            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://127.0.0.1/cms";

            Connection con = DriverManager.getConnection(url, "root", "root");

            Statement st = con.createStatement();

            String query = "INSERT INTO course_assignment(course_id, email) VALUES('" + course + "','" + email + "') ";

            // System.out.println(query);

            int rs = st.executeUpdate(query);

            if (rs == 1) {
                request.setAttribute("msg", "Successfully Added Teacher to the course.");

                request.getRequestDispatcher("/Admin.jsp").forward(request, response);

                out.println("<h1> Added </h1>");
            } else {
                request.setAttribute("msg", "There is problem in adding Teacher to the course.");

                request.getRequestDispatcher("/Admin.jsp").forward(request, response);

                out.println("<h1> Not Added </h1>");
            }


            st.close();
            con.close();

        } catch (Exception e) {

            out.println(e);
        }

    }

}
