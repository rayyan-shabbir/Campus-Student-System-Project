import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class signup extends HttpServlet {

    // Process the HTTP Get request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        String em = request.getParameter("em");
        String pass = request.getParameter("pass");
        String name = request.getParameter("name");
        String dob = request.getParameter("dob");
        String sem = request.getParameter("sem");
        String phone = request.getParameter("phone");
        String user = request.getParameter("user");

        // out.println("<html>");
        // out.println("<head><title>Response</title></head>");
        // out.println("<body bgcolor=\"#ffffff\">");
        // out.println("<h1>Home Page </h1>");
        // out.println("<h3>");
        // out.println(em);
        // out.println(pass);
        // out.println(name);
        // out.println(dob);
        // out.println(sem);
        // out.println(phone);
        // out.println(user);
        // out.println("</h3>");

        SignupBean sb = new SignupBean();
        sb.setEmail(em);
        sb.setPassword(pass);
        sb.setName(name);
        sb.setDOB(dob);
        sb.setSem(sem);
        sb.setPhone(Long.parseLong(phone));
        sb.setUser(user);


        SignupDAO sdao = new SignupDAO();

        out.println("OKaaa!:");

        try {
            String insert = sdao.insert(sb);
            out.println(insert);
            if(insert.equals("success")) {
                request.setAttribute("status", "Success");
                request.setAttribute("errMsg", "Your account has been created successfully!");
                request.getRequestDispatcher("/home.jsp").forward(request, response);
                out.println("Success");
            } else if(insert.equals("fail")) {
                // request.setAttribute("status", "Fail");
                request.setAttribute("errMsg", "Sorry, Account has not been created. There is something issue with your credentials!");
                request.getRequestDispatcher("/home.jsp").forward(request, response);
                out.println("Fail");
            } else {
                out.println("Inside else");
            }

        } catch (Exception ex) {
            out.println("signup ERROR:");
            out.println(ex.getMessage());
        }


        // try {
        //     Class.forName("com.mysql.jdbc.Driver");

        // String url = "jdbc:mysql://127.0.0.1/authentication";

        // Connection con = DriverManager.getConnection(url, "root", "root");

        // Statement st = con.createStatement();

        // String query = "Select * from login_table where email='" + em + "' and password='"+pass+"'";

        // ResultSet rs = st.executeQuery(query);

        // if (rs.next()) {

        //     System.out.println("<h1>Record found</h1>");

        //     String name = rs.getString("email");

        //     System.out.println("<h1>User Name: " + name + " </h1>");

        // }

        // else {
        //     System.out.println("<h1>No record found</h1>");
        // }

        //     out.println("</body></html>");
        //     st.close();
        //     con.close();

        // } catch (Exception e) {

        //     out.println(e);
        // }

    }

}
