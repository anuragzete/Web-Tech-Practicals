<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Assignment 6</title>
</head>
<body>
  <form method="post">
    <table border="1" style="border-collapse:collapse; color:#213E3B; text-align:center; border: 1px solid #41AEA9; background-color: #B9FFFC;">
      <tr>
        <td><h3>Student ID Number</h3></td>
        <td><h3>Name of the Student</h3></td>
        <td><h3>Class</h3></td>
        <td><h3>Division</h3></td>
        <td><h3>City</h3></td>
      </tr>

      <%
      try {
        String dbDriver = "com.mysql.cj.jdbc.Driver";
        String dbURL = "jdbc:mysql://localhost:3306/";
        String dbName = "record";
        String dbUsername = "root";
        String dbPassword = "Sudarshan";

        Class.forName(dbDriver);
        Connection conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);
        Statement stmt = conn.createStatement();

        String sqlStr = "SELECT * FROM students_info";
        ResultSet rset = stmt.executeQuery(sqlStr);

        while (rset.next()) {
      %>
          <tr>
            <td><%= rset.getString("stud_id") %></td>
            <td><%= rset.getString("stud_name") %></td>
            <td><%= rset.getString("class") %></td>
            <td><%= rset.getString("division") %></td>
            <td><%= rset.getString("city") %></td>
          </tr>
      <%
        }
        rset.close();
        stmt.close();
        conn.close();
      } catch (Exception e) {
        e.printStackTrace();
      }
      %>
    </table>
  </form>
</body>
</html>
