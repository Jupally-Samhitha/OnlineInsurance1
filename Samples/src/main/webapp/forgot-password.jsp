<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        .reset-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .reset-container h1 {
            text-align: center;
            color: #ffc107;
        }
    
        /* Input fields */
        .form-group input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
    
        /* Specific button styling */
        .reset-container .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #ffc107 !important; /* Use !important to force the color */
            color: black !important; /* Ensuring text color is black */
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-transform: uppercase; /* Optional, makes text look cleaner */
        }
    
        /* Hover effect */
        .reset-container .form-group button:hover {
            background-color: #FFCA28 !important; /* Slightly darker yellow on hover */
        }
    
        /* Success and Error messages */
        .success {
            color: #ffc107;
            text-align: center;
        }
    
        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="reset-container">
        <h1>Forgot Password</h1>
        <%
            String error = (String) request.getAttribute("error");
            String success = (String) request.getAttribute("success");
            if (error != null) {
        %>
            <p class="error"><%= error %></p>
        <% 
            } else if (success != null) {
        %>
            <p class="success"><%= success %></p>
        <% 
            }
        %>
        <form method="POST" action="ResetPasswordServlet">
            <div class="form-group">
                <input type="text" name="username" placeholder="Username" required>
            </div>
            <div class="form-group">
                <input type="password" name="new_password" placeholder="New Password" required>
            </div>
            <div class="form-group">
                <input type="password" name="confirm_password" placeholder="Confirm Password" required>
            </div>
            <div class="form-group">
                <button type="submit">Reset Password</button>
            </div>
        </form>
    </div>

</body>
</html>
