<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cancellation</title>
    <link rel="stylesheet" href="styles.css">
    <style>
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
            <h1>Cancellation</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="agent-availability.jsp">Agent Availability</a></li>
                    <li><a href="agent-booking.jsp">Agent Booking</a></li>
                    <li><a href="cancellation.jsp" class="active">Cancellation</a></li>
                    
                    <li><a href="plan.jsp">Plan</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <form id="cancellation-form" action="CancellationServlet" method="post">
            <div class="form-group">
                <label for="appointment-id">Appointment ID</label>
                <input type="text" id="appointment-id" name="appointmentId" required>
            </div>
            <div class="form-group">
                <label for="agentname">Agent Name</label>
                <input type="text" id="agentname" name="agentName" required>
            </div>
            <div class="form-group">
                <label for="appointment-date">Appointment Date</label>
                <input type="date" id="appointment-date" name="appointmentDate" required>
            </div>
            <div class="form-group">
                <label for="reason">Cancellation Reason</label>
                <textarea id="reason" name="reason" rows="4" required></textarea>
            </div>
            <button onclick="window.location.href='cancellation-success.jsp'" >Cancel Appointment</button>
        </form>
    </main>
    <div class="car-animation">
        <img src="https://i.pinimg.com/564x/d8/3d/f0/d83df01935b49bd759f1525f653ef26a.jpg" class="car-animation" alt="Car Animation">
    </div>
</body>
</html>
