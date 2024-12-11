<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Projectt.InsurancePlan" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Plans</title>
    <link rel="stylesheet" href="plan.css">
    <style>
        #header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        body {
            margin-top: 100px;
            background-image: url('https://images.unsplash.com/photo-1450101499163-c8848c66ca85?q=80&w=2070&auto=format&fit=crop');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
        }

        .plans-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            justify-content: center;
        }

        .plan-box {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            flex: 1 1 calc(33% - 40px);
            max-width: calc(33% - 40px);
            text-align: center;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

        .plan-box h2 {
            margin-bottom: 10px;
            color: #333;
        }

        .plan-box p {
            margin-bottom: 15px;
            color: #666;
        }

        .plan-box button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .plan-box button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <header id="header">
        <div class="header-container">
            <h1>Online Insurance Subscription</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                    <li><a href="agent-availability.jsp">Agent Availability</a></li>
                    <li><a href="agent-booking.jsp">Agent Booking</a></li>
                    <li><a href="cancellation.jsp">Cancellation</a></li>
                 
                    <li><a href="plan.jsp" class="active">Plan</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main class="plans-container">
        <main class="plans-container">
        <div class="plan-box">
            <h2>Health Insurance</h2>
            <p>Comprehensive coverage for medical expenses.</p>
            <button onclick="window.location.href='subscriptions.jsp'">View Subscriptions</button>
        </div>
        <div class="plan-box">
            <h2>Life Insurance</h2>
            <p>Secure your family's future with life coverage.</p>
            <button onclick="window.location.href='subscriptions.jsp'">View Subscriptions</button>
        </div>
        <div class="plan-box">
            <h2>Auto Insurance</h2>
            <p>Protection for your vehicle against unforeseen events.</p>
            <button onclick="window.location.href='subscriptions.jsp'">View Subscriptions</button>
        </div>
    </main>
</body>
</html>
