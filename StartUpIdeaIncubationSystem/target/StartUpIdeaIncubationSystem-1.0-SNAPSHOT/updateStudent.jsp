<%-- 
    Document   : updateStudent
    Created on : 12 Oct 2025, 9:39:43 am
    Author     : padol
--%>

<%@page import="com.mycompany.startupideaincubationsystem.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
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
        <title>Update Profile</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-image: url('background.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            padding: 40px;
        }
        .form-box {
            background-color: rgba(44, 62, 80, 0.8);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
            max-width: 500px;
            margin: auto;
            color: #fff;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button[type="submit"] {
            background-color: #2ecc71;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px 20px;
            margin-top: 15px;
            border-radius: 5px;
        }
        button[type="submit"]:hover {
            background-color: #27ae60;
        }
        .error {
            color: #e74c3c;
            margin-top: 10px;
        }
    </style>
</head>

   <body>
    <div class="form-box">
        <h2>Update Your Profile</h2>
        <form action="SaveUpdatedStudentController" method="post">
            <input type="hidden" name="studID" value="<%= student.getStudID() %>">

            <label>Name:</label>
            <input type="text" name="name" value="<%= student.getName() %>" required>

            <label>Email:</label>
            <input type="email" name="email" value="<%= student.getEmail() %>" required>

            <label>Password:</label>
            <input type="password" name="password" value="<%= student.getPassword() %>" required>

            <label>Photo Path:</label>
            <input type="text" name="photoPath" value="<%= student.getPhotoPath() %>">

            <label>About You:</label>
            <textarea name="about" rows="4"><%= student.getAbout() %></textarea>

            <button type="submit">Save Changes</button>
        </form>

        <div class="error">
            <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
        </div>
    </div>
</body>


</html>
