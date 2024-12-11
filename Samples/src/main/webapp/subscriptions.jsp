<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Life Insurance Subscriptions</title>
    <link rel="stylesheet" href="plan.css">
</head>
<body>
    <header id="header">
        <div class="header-container">
            <h1> Insurance Subscriptions</h1>
        </div>
    </header>

    <!-- Confirmation Dialog Box -->
    <div id="confirmationDialog" class="confirmation-dialog">
        <div class="dialog-content">
            <span class="close-btn">&times;</span>
            <h2>Subscription Confirmation</h2>
            <div id="dialogMessage" class="dialog-message"></div>
        </div>
    </div>

    <main class="plans-container">
        <!-- Subscription Category 1 -->
        <div class="plan-box">
            <h2>Basic Plan</h2>
            <form id="form1">
                <label for="name1">Name:</label>
                <input type="text" id="name1" name="name" required>
                
                <label for="email1">Email:</label>
                <input type="email" id="email1" name="email" required>
                
                <label for="duration1">Duration (Years):</label>
                <input type="number" id="duration1" name="duration" min="1" required>
                
                <p><strong>Subscription Type:</strong> Basic Plan</p>
                <button type="button" class="subscribe-btn" data-plan="Basic Plan" data-form="form1">Subscribe Now</button>
            </form>
        </div>
        
        <!-- Subscription Category 2 -->
        <div class="plan-box">
            <h2>Premium Plan</h2>
            <form id="form2">
                <label for="name2">Name:</label>
                <input type="text" id="name2" name="name" required>
                
                <label for="email2">Email:</label>
                <input type="email" id="email2" name="email" required>
                
                <label for="duration2">Duration (Years):</label>
                <input type="number" id="duration2" name="duration" min="1" required>
                
                <p><strong>Subscription Type:</strong> Premium Plan</p>
                <button type="button" class="subscribe-btn" data-plan="Premium Plan" data-form="form2">Subscribe Now</button>
            </form>
        </div>
        
        <!-- Subscription Category 3 -->
        <div class="plan-box">
            <h2>Family Plan</h2>
            <form id="form3">
                <label for="name3">Name:</label>
                <input type="text" id="name3" name="name" required>
                
                <label for="email3">Email:</label>
                <input type="email" id="email3" name="email" required>
                
                <label for="duration3">Duration (Years):</label>
                <input type="number" id="duration3" name="duration" min="1" required>
                
                <p><strong>Subscription Type:</strong> Family Plan</p>
                <button type="button" class="subscribe-btn" data-plan="Family Plan" data-form="form3">Subscribe Now</button>
            </form>
        </div>
    </main>


    <script src="plan.js"></script>
</body>
</html>
