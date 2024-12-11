<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
    body {
        background-image: url('https://tse3.mm.bing.net/th?id=OIP._vMl2Z9O0ld-NCOBwDqDRgHaE8&pid=Api&P=0&h=180');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
    }

    header {
        background-color: #FFC107;
        padding: 20px;
        text-align: center;
        color: black;
    }

    nav ul {
        list-style: none;
        padding: 0;
        display: flex;
        justify-content: center;
        gap: 20px;
    }

    nav ul li a {
        text-decoration: none;
        color: black;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    nav ul li a:hover {
        color: darkgoldenrod;
    }

    .form-container {
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        max-width: 400px;
        margin: auto;
        margin-top: 50px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    }

    .form-group label {
        color: black;
    }

    .form-group input {
        width: 100%;
        padding: 10px;
        margin-top: 5px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    button {
        background-color: #FFC107;
        color: black;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        font-size: 16px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #FFA000;
    }

    form p a {
        color: darkgoldenrod;
        text-decoration: underline;
    }
</style>
<body class="login-page">

    <header>
        <div class="header-container">
            <div class="header-container">
        
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
        </div>
    </header>

    <div class="form-container">
        <form action="AdminLoginServlet" method="post">
            <h2>Login</h2>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
            
            <p><a href="forgot-password.jsp">Forgot Password?</a></p>
            <p>Don't have an account? <a href="admin-register.jsp">Register now</a></p>
        </form>
    </div>

</body>
</html>
