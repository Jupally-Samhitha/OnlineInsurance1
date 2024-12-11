<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage - Online Insurance</title>
    <link rel="stylesheet" href="manage.css">
    <style>
        body {
            background-image: url('https://static.vecteezy.com/system/resources/previews/009/948/834/original/aesthetic-minimal-green-frame-background-illustration-perfect-for-wallpaper-backdrop-postcard-background-vector.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }
        .grid-item {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .grid-item h3 {
            margin-bottom: 10px;
            color: #333;
        }
        .grid-item p {
            margin-bottom: 15px;
            color: #666;
        }
        .grid-item button {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .grid-item button:hover {
            background-color: #218838;
        }
        .button-link {
            text-decoration: none;
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }
        .button-link:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <header>
        <h1>Manage Insurance Operations</h1>
        <nav>
            <ul>
                <li><a href="admindashboard.jsp">Dashboard</a></li>
                <li><a href="adminlogin.jsp">Login</a></li>
                <li><a href="admin-registration.jsp">Register</a></li>
                <li><a href="manage.jsp">Manage</a></li>
                <li><a href="plan.jsp">Plans</a></li>
               
            </ul>
        </nav>
    </header>
    <main>
        <section class="manage-section">
            <h2>Manage Insurance Agents and Customers</h2>
            <p>Efficiently manage operations like agent availability, customer support, and appointments.</p>

            <div class="grid-container">
                <div class="grid-item agent">
                    <h3>Agents</h3>
                    <p>Update schedules and statuses of your insurance agents.</p>
                    <button onclick="window.location.href='manage-agents.jsp'">Manage Agents</button>
                </div>
                
                
                <div class="grid-item appointment">
                    <h3>Appointments</h3>
                    <p>Schedule and manage appointments effectively.</p>
                    <button onclick="window.location.href='manage-appointments.jsp'">Manage Appointments</button>
                </div>
                
            </div>
        </section>
    </main>
</body>
</html>
