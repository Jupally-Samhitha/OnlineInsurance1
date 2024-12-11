<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agent Booking</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Add background image to the body */
        body {
            background-image: url('https://static.vecteezy.com/system/resources/previews/013/630/293/large_2x/aesthetic-style-background-template-with-organic-abstract-shapes-and-lines-in-soft-green-color-burnt-orange-vector-illustration-free-photo.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-container">
            <h1>Agent Booking</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="agent-availability.jsp">Agent Availability</a></li>
                    <li><a href="agent-booking.jsp" class="active">Agent Booking</a></li>
                    <li><a href="cancellation.jsp">Cancellation</a></li>
                    
                    <li><a href="plan.jsp">Plan</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <form id="booking-form" action="AgentBookingServlet" method="post">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="phone">Phone Number</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <div class="form-group">
                <label for="appointment-date">Appointment Date</label>
                <input type="date" id="appointment-date" name="appointmentDate" required>
            </div>
               <button onclick="window.location.href='booking-success.jsp'">Book Appointment</button>
        </form>
    </main>
    <div class="car-animation">
        <img src="https://i.pinimg.com/564x/d8/3d/f0/d83df01935b49bd759f1525f653ef26a.jpg" class="car-animation" alt="Car Animation">
    </div>
</body>
</html>
