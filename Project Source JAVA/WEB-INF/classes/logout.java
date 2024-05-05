import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class logout extends HttpServlet {

    // Process the HTTP Get request
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession ses = request.getSession(false);

        if(ses != null) {
            ses.invalidate();
            request.setAttribute("errMsg", "You have logged Out successfully...");
            RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
            rd.forward(request, response);
            System.out.println("Logged Out");
            
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("/home.jsp");
            rd.forward(request, response);
            System.out.println("Logged Out");
        }

        // PrintWriter out = response.getWriter();

        // out.println("Logout Rayan");
    }

}
