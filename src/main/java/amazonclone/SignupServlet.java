package amazonclone;

import java.io.IOException;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SignupServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/amazon_clone", "root", "Password");

            String sql = "INSERT INTO users(fullname, email, password, mobile) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, fullname);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, mobile);

            int row = ps.executeUpdate();
            if (row > 0) {
                response.sendRedirect("login.jsp");
            } else {
                response.sendRedirect("signup.jsp?error=failed");
            }

            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace(); // Keep this for console logs

            // Send the actual error to the browser (temporary for debugging)
            response.setContentType("text/html");
            response.getWriter().println("<h3 style='color:red;'>Error: " + e.getMessage() + "</h3>");
        }

    }
}
