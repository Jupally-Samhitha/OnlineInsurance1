<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Add background image to the body */
        body {
            background-image: url('https://static.vecteezy.com/system/resources/previews/000/453/432/original/vector-contact-us-background.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-container">
            <h1>Contact Us</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp" class="active">Contact</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="agent-availability.jsp">Agent Availability</a></li>
                    <li><a href="agent-booking.jsp">Agent Booking</a></li>
                    <li><a href="cancellation.jsp">Cancellation</a></li>
                    
                    <li><a href="plan.jsp">Plan</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <div class="form-container">
            <h2>Check the Availability of Our Agents</h2>
            <ul>
                <li>Agent 1: Available from 9 AM to 5 PM</li>
                <li>Agent 2: Available from 10 AM to 4 PM</li>
                <li>Agent 3: Available from 1 PM to 6 PM</li>
                <li>Agent 4: Available from 11 AM to 4 PM</li>
                <li>Agent 5: Available from 2 PM to 6 PM</li>
            </ul>

            <h3>Contact Information</h3>
            <p>Email: support@example.com</p>
            <p>Phone: +1 234 567 890</p>
            <p>Address: 123 Insurance Street, Suite 456, City, Country</p>

            <h3>Get in Touch</h3>
            <form action="ContactServlet" method="post">
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" name="fullName" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="4" required></textarea>
                </div>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </main>
</body>
</html>
