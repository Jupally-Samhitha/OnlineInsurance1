<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Add background image to the body */
        body {
            background-image: url('https://tse4.mm.bing.net/th?id=OIP.cTl6K-APTiFAkMbu_h-uBQHaD9&pid=Api&P=0&h=180');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        .registration-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .registration-container h1 {
            text-align: center;
            color: #ffc107;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background: #ffc107;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
            <div class="header-container">
      
        <nav>
            <ul>
                <li><a href="admindashboard.jsp">Dashboard</a></li>
                <li><a href="adminlohin.jsp">Login</a></li>
                <li><a href="admin-registration.jsp">Register</a></li>
                <li><a href="manage.jsp">Manage</a></li>
                <li><a href="plan.jsp">Plans</a></li>
                
            </ul>
        </nav>
    </div>

    <div class="registration-container">
        <h1>Admin Registration</h1>
        
        <div id="error-message" class="error" style="display: none;">
            <!-- Error messages will appear here -->
        </div>

        <!-- Form for Admin Registration -->
        <form action="AdminRegistrationServlet" method="post">
            <div class="form-group">
                <input type="text" name="username" id="username" placeholder="Username" required>
            </div>
            <div class="form-group">
                <input type="password" name="password" id="password" placeholder="Password" required>
            </div>
            <div class="form-group">
                <input type="password" name="confirmPassword" id="confirm_password" placeholder="Confirm Password" required>
            </div>
            <div class="form-group">
                <button type="submit">Register</button>
            </div>
        </form>
    </div>
<script>
        // Password validation function
        document.getElementById('admin-registration-form').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form from submitting

            var password = document.getElementById('password').value;
            var confirmPassword = document.getElementById('confirm_password').value;

            // Check if the passwords match
            if (password !== confirmPassword) {
                document.getElementById('error-message').style.display = 'block';
                document.getElementById('error-message').innerText = 'Passwords do not match. Please try again.';
                return; // Stop form submission if passwords do not match
            }

            // If passwords match, submit the form
            this.submit();
        });
    </script>
    
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
