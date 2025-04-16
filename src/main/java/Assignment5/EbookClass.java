package Assignment5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/ebookclass")
public class EbookClass extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EbookClass() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head><title>Query Response</title></head>");
        out.println("<body>");
        try {
            String dbDriver = "com.mysql.cj.jdbc.Driver";
            String dbURL = "jdbc:mysql://localhost:3306/";
            String dbName = "books";
            String dbUsername = "root";
            String dbPassword = "Sudarshan";

            Class.forName(dbDriver);

            Connection conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);

            Statement stmt = conn.createStatement();

            String sqlStr = "SELECT * FROM ebookshop";
            ResultSet rset = stmt.executeQuery(sqlStr);

            int count = 0;
            out.println("<table border='1' style='border-collapse:collapse; border-radius:10px; border:1px solid white; background-color:#96D4D4;'>");
            out.println("<tr><td>Book ID</td><td>Book Author</td><td>Book Name</td><td>Book Price</td><td>Quantity</td></tr>");
            while (rset.next()) {
                out.println("<tr><td>" + rset.getInt("book_id") + "</td><td>" +
                        rset.getString("book_author") + "</td><td>" +
                        rset.getString("book_name") + "</td><td>Rs. " +
                        rset.getDouble("book_price") + "</td><td>" +
                        rset.getInt("quantity") + "</td></tr>");
                count++;
            }
            out.println("</table>");
            out.println("<p>==== " + count + " records found ====</p>");

            // Close resources
            rset.close();
            stmt.close();
            conn.close();
        } catch (Exception ex) {
            out.println("<p>Error: " + ex.getMessage() + "</p>");
            out.println("<p>Check Tomcat console for details.</p>");
            ex.printStackTrace();
        }
        out.println("</body></html>");
        out.close();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}