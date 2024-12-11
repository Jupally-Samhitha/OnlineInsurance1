<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
    /* Add background image to the body */
    body {
        background-image: url('https://wallpaperaccess.com/full/1994942.jpg');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
    }
</style>
<body class="register-page">

    <header>
        <div class="header-container">
            <h1>Register</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="login.jsp" class="active">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <div class="form-container">
            <h2>Create an Account</h2>
            <form action="RegisterServlet" method="post" onsubmit="return validateRegistration()">
                <div class="form-group">
                    <label for="name">Full Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="age">Age</label>
                    <input type="number" id="age" name="age" required>
                </div>
                <div class="form-group">
                    <label for="policy">Policy Name</label>
                    <input type="text" id="policy" name="policy" required>
                </div>
                <div class="form-group">
                    <label for="payment">Payment Type</label>
                    <input type="text" id="payment" name="payment" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="address">Address</label>
                    <textarea id="address" rows="4" name="address" required></textarea>
                </div>
                <button type="submit">Register</button>
                <p>Already have an account? <a href="login.jsp">Login here</a></p>
            </form>
        </div>
    </main>

    <script>
        // Function to validate registration fields
        function validateRegistration() {
            var age = document.getElementById('age').value;
            var password = document.getElementById('password').value;
            var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

            // Validate Age (18-100)
            if (age < 18 || age > 100) {
                alert("Age must be between 18 and 100.");
                return false;
            }

            // Validate Password strength
            if (!passwordPattern.test(password)) {
                alert("Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character.");
                return false;
            }

            // If validation passes, show success message (you can handle this with the Servlet too)
            alert("Registration successful! You can now log in.");
            
            // Allow the form to submit
            return true;
        }
    </script>

</body>
</html>
