<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Agent Management</title>
  <link rel="stylesheet" href="a.css">
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
<body>
  <div class="container">
    <h1>Agent Management</h1>
    <form id="appointment-form">
      <label for="name">Name:</label>
      <input type="text" id="name" required>
      
      <label for="contact">Contact:</label>
      <input type="contact" id="contact" required>
      
      <label for="available">Available:</label>
      <input type="available" id="available" required>
       
       
       <label for="date">Date:</label>
      <input type="date" id="date" required>
     
      <label for="time">Time:</label>
      <input type="time" id="time" required>
      
      <button type="submit">Schedule</button>
    </form>
    <h2>Schedule of Agents</h2>
    <table id="appointment-table">
      <thead>
        <tr>
          <th>Name</th>
          <th>Contact</th>
          <th>Available</th>
          <th>Date</th>
          <th>Time</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody></tbody>
    </table>
  </div>
  <script src="b.js"></script>
</body>
</html>