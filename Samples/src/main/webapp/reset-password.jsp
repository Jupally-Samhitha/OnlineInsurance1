<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            background-image: url('https://static.vecteezy.com/system/resources/previews/013/630/293/large_2x/aesthetic-style-background-template-with-organic-abstract-shapes-and-lines-in-soft-green-color-burnt-orange-vector-illustration-free-photo.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
        .form-container {
            max-width: 500px;
            margin: 0 auto;
            padding: 30px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-group button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body class="reset-password-page">

    <header>
        <div class="header-container">
            <h1>Reset Password</h1>
            <nav>
                <ul>
                    <li><a href="welcome.jsp">Home</a></li>
                
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="form-container">
        <form id="reset-password-form" action="resetPassword" method="POST">
            <h2>Reset Password</h2>

            <% if(request.getAttribute("errorMessage") != null) { %>
                <p style="color:red"><%= request.getAttribute("errorMessage") %></p>
            <% } %>

            <% if(request.getAttribute("successMessage") != null) { %>
                <p style="color:green"><%= request.getAttribute("successMessage") %></p>
            <% } %>

            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="form-group">
                <label for="newPassword">New Password</label>
                <input type="password" id="newPassword" name="newPassword" required>
            </div>

            <div class="form-group">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
            </div>

            <button type="submit">Reset Password</button>
            <p><a href="login.jsp">Back to Login</a></p>
        </form>
    </div>

</body>
</html>
