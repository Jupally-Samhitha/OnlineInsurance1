<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Agent</title>
</head>
<body>
    <h1>Edit Agent</h1>

    <% 
        String agentId = request.getParameter("agentId");
        if (agentId != null) {
            Connection con = null;
            PreparedStatement pst = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampleDB", "root", "root");

                String query = "SELECT * FROM agents WHERE id = ?";
                pst = con.prepareStatement(query);
                pst.setInt(1, Integer.parseInt(agentId));
                rs = pst.executeQuery();

                if (rs.next()) {
    %>
        <form action="UpdateAgentServlet" method="post">
            <input type="hidden" name="agentId" value="<%= rs.getInt("id") %>" />

            <label for="status">Status:</label>
            <select name="status">
                <option value="Available" <% if ("Available".equals(rs.getString("status"))) out.print("selected"); %>>Available</option>
                <option value="Not Available" <% if ("Not Available".equals(rs.getString("status"))) out.print("selected"); %>>Not Available</option>
            </select>
            <br>

            <label for="schedule">Schedule:</label>
            <input type="text" name="schedule" value="<%= rs.getString("schedule") %>" required />
            <br>

            <button type="submit">Update Agent</button>
        </form>
    <% 
                } else {
                    out.println("<p>Agent not found.</p>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<p>Error occurred: " + e.getMessage() + "</p>");
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (pst != null) pst.close();
                    if (con != null) con.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        }
    %>

</body>
</html>
