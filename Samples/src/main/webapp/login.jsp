<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
    /* Add background image to the body */
    body {
        background-image: url('https://live.staticflickr.com/65535/17102040447_2948e2f7ed_b.jpg'); /* Replace with the path to your image */
        background-size: cover;
        background-position: center;
        background-attachment: fixed; /* Keeps the background fixed while scrolling */
    }
</style>
<body class="login-page">

    <header>
        <div class="header-container">
            <h1>Login</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="form-container">
        <!-- Updated form to send data to the servlet -->
        <form id="login-form" action="Login" method="post">
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
            <p><a href="reset-password.jsp">Forgot Password?</a></p>
            <p>Don't have an account? <a href="register.jsp">Register now</a></p>
        </form>
    </div>

    <div class="car-animation">
        <img src="https://i.pinimg.com/564x/d8/3d/f0/d83df01935b49bd759f1525f653ef26a.jpg" class="car-animation" alt="Car Animation">
    </div>

 

<script>
        function handleLogin(event) {
            event.preventDefault(); // Prevent default form submission

            // Retrieve input values
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            // Log inputs (Optional for debugging)
            console.log('Username:', username);
            console.log('Password:', password);

            // Redirect to index.html
            window.location.href = 'index.jsp'; 
        }
    </script>
</body>
</html>