<%-- 
    Document   : dashboard
    Created on : 30 Sept 2025, 9:28:15 am
    Author     : padol
--%>

<%@page import="com.mycompany.startupideaincubationsystem.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Student student = (Student) session.getAttribute("student");
    if (student == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background-image: url('background.jpg');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        padding: 40px;
        color: #fff;
    }

    .dashboard-box {
        background-color: rgba(44, 62, 80, 0.85);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 0 15px rgba(0,0,0,0.3);
        max-width: 600px;
        margin: auto;
        text-align: center;
    }

    h2 {
        margin-bottom: 20px;
        color: #2ecc71;
    }

    p {
        font-size: 16px;
        margin: 10px 0;
    }

    img {
        border-radius: 50%;
        margin-top: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.5);
    }

    button, a {
        display: inline-block;
        margin: 15px 10px;
        padding: 10px 20px;
        border-radius: 5px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    button {
        background-color: #3498db;
        color: white;
        border: none;
        cursor: pointer;
    }

    button:hover {
        background-color: #2980b9;
    }

    a {
        background-color: #e74c3c;
        color: white;
    }

    a:hover {
        background-color: #c0392b;
    }
</style>
    </head>
    <body>
    <div class="dashboard-box">
        <h2>Welcome, <%= student.getName() %></h2>
        <p><b>Student ID:</b> <%= student.getStudID() %></p>
        <p><b>Email:</b> <%= student.getEmail() %></p>
        <p><b>About You:</b> <%= student.getAbout() %></p>

        <p><b>Photo:</b><br>
            <% if (student.getPhotoPath() != null && !student.getPhotoPath().isEmpty()) { %>
                <img src="uploads/<%= student.getPhotoPath() %>" width="120" height="120" alt="Student Photo">
            <% } else { %>
                No photo uploaded.
            <% } %>
        </p>
        
        <button onclick="location.href='addideas.jsp'">Submit Idea</button>
        <button onclick="location.href='updateStudent.jsp'">Update Student Information</button>
        <a href="LogoutServlet">Logout</a>
    </div>
</body>

</html>
