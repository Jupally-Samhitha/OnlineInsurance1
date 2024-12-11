<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home</title>
  <link rel="stylesheet" href="styles.css">
  <style>
    body {
      background: url('<%= request.getContextPath() %>/images/insur.jpg') no-repeat center center fixed;
      background-size: cover;
      color: #fff;
      font-family: Arial, sans-serif;
    }

    .overlay {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.5);
      z-index: 1;
    }

    .header-container {
      position: relative;
      z-index: 2;
      text-align: center;
      padding: 20px 0;
    }

    .main-content {
      position: relative;
      z-index: 2;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: flex-start;
      height: 80vh;
      text-align: left;
      color: #fff;
      padding-left: 2rem;
    }

    nav ul {
      list-style: none;
      padding: 0;
      display: flex;
      justify-content: center;
      gap: 1rem;
    }

    nav ul li a {
      color: #fff;
      text-decoration: none;
      font-weight: bold;
    }

    nav ul li a.active {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <div class="overlay"></div>

  <header>
    <div class="header-container">
      <h1>
        Welcome, 
        <%= session.getAttribute("username") != null ? session.getAttribute("username") : "Guest" %>!
      </h1>
      <nav>
        <ul>
          <li><a href="index.jsp" class="active">Home</a></li>
          <li><a href="about.jsp">About Us</a></li>
          <li><a href="contact.jsp">Contact</a></li>
          <li><a href="login.jsp">Login</a></li>
          <li><a href="register.jsp">Register</a></li>
          <li><a href="agentavailability.html">Agent Availability</a></li>
          <li><a href="agent-booking.jsp">Agent Booking</a></li>
          <li><a href="cancellation.jsp">Cancellation</a></li>
          <li><a href="plan.jsp">Plan</a></li>
          <li><a href="adminlogin.jsp">Admin</a></li>
         
        </ul>
      </nav>
    </div>
  </header>

  <div class="main-content">
    <h2>Welcome to our platform</h2>
    <p>Explore our services and get in touch with our agents.</p>
  </div>
</body>
</html>
