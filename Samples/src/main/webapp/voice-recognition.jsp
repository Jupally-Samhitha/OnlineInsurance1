<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Voice Recognition</title>
  <link rel="stylesheet" href="styles.css">
  <style>
      /* Add your existing styles here */
      body {
          background-color: #fff;
      }

      header {
          background-color: #28a745;
          color: #fff;
          padding: 20px;
          display: flex;
          justify-content: space-between;
          align-items: center;
      }

      .logo {
          font-size: 24px;
          margin-left: 80px;
      }

      .navbar ul {
          list-style: none;
          display: flex;
          justify-content: center;
          gap: 100px;
          margin-left: 370px;
      }

      .navbar ul li {
          display: inline-block;
      }

      .navbar ul li a {
          text-decoration: none;
          color: white;
          font-size: 16px;
      }

      main {
          display: flex;
          justify-content: center;
          align-items: center;
          height: 100vh;
          background-color: #f3f9fc;
          position: relative;
      }

      .voice-recognition {
          background: #fff;
          padding: 20px;
          border-radius: 8px;
          box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
          max-width: 500px;
          width: 90%;
          text-align: center;
      }

      .voice-recognition h1 {
          color: #28a745;
          margin-bottom: 20px;
      }

      .voice-recognition p {
          color: #555;
          margin-bottom: 15px;
      }

      .start-btn {
          background-color: #28a745;
          color: #fff;
          border: none;
          padding: 10px 20px;
          border-radius: 5px;
          cursor: pointer;
          font-size: 16px;
      }

      .start-btn:hover {
          background-color: #5bc85b;
      }

      .query-output, .ai-response {
          margin-top: 20px;
          padding: 10px;
          background-color: #f3f9fc;
          border-radius: 5px;
          text-align: left;
      }

      .ai-response {
          background-color: #e8f9e8;
          border: 1px solid #d3f5d3;
      }
  </style>
</head>
<body>
  <header>
    <div class="navbar">
        <h1 class="logo"><i class="fa-solid fa-heart-pulse"></i> ONLINE INSURANCE</h1>
        <ul>
            <li><a href="agent-availability.jsp">Agent Availability</a></li>
            <li><a href="agent-booking.jsp">Booking</a></li>
            <li><a href="about.jsp">About Us</a></li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
    </div>
  </header>

  <main>
    <section class="voice-recognition">
      <h1>Voice Recognition for Customer Queries</h1>
      <form action="VoiceQueryServlet" method="post">
        <label for="query">Speak or Enter Your Query:</label><br>
        <textarea id="query" name="query" rows="4" placeholder="Type your query here..." required></textarea><br><br>
        <button type="submit" class="start-btn">Submit Query</button>
      </form>
      <div class="query-output">
        <p><strong>Your Query:</strong> Displayed after submission.</p>
      </div>
      <div class="ai-response">
        <p><strong>AI Response:</strong> Will be processed and stored.</p>
      </div>
    </section>
  </main>
</body>
</html>
