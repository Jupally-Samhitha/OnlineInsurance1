<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css"> <!-- Link to your CSS file -->
    <style>
        body {
            background-image: url('https://tse3.mm.bing.net/th?id=OIP._vMl2Z9O0ld-NCOBwDqDRgHaE8&pid=Api&P=0&h=180');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }
        header {
        background-color: #FFC107;
        padding: 20px;
        text-align: center;
        color: black;
    }
        
        /* Add your CSS styles for the dashboard here */
    </style>
</head>
<body>

<% 
  
%>

<header>
    <div class="header-container">
        <h1>Welcome, Admin!</h1>
        <nav>
            <ul>
                <li><a href="admindashboard.jsp">Dashboard</a></li>
                <li><a href="adminlogin.jsp">Login</a></li>
                <li><a href="admin-registration.jsp">Register</a></li>
                <li><a href="manage.jsp">Manage</a></li>
                <li><a href="plan.jsp">Plans</a></li>
                
            </ul>
        </nav>
    </div>
</header>

<div class="dashboard-container">
    <h1>Welcome to the Admin Dashboard</h1>
</div>

</body>
</html>
