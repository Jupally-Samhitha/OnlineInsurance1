<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="styles.css">
    <style>
       
    /* Add background image to the body */
    body {
        background-image: url('https://live.staticflickr.com/65535/17102040447_2948e2f7ed_b.jpg'); /* Replace with the path to your image */
        background-size: cover;
        background-position: center;
        background-attachment: fixed; /* Keeps the background fixed while scrolling */
    
      
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 20px;
        }
        .button-container {
            margin-top: 20px;
        }
        button {
            margin: 10px;
            padding: 15px 30px;
            font-size: 18px;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <h1>Welcome to Online Insurance Management</h1>
    <p>Please choose your registration type:</p>

    <div class="button-container">
        <!-- Buttons to choose user or admin registration -->
        <button onclick="window.location.href='register.jsp'">User Registration</button>
        <button onclick="window.location.href='admin-registration.jsp'">Admin Registration</button>
    </div>

</body>
</html>
