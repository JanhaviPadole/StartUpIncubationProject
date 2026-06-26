<%-- 
    Document   : login
    Created on : 30 Sept 2025, 9:13:26 am
    Author     : padol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
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
            input[type="submit"] {
                background-color: #2ecc71;
                color: white;
                border: none;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #27ae60;
            }
        </style>
    </head>

    <body>
        <div class="form-box">
    <h2>Student Login</h2>
    <form action="loginServlet" method="post">
        <label>Email:</label>
        <input type="email" name="Email" required>

        <label>Password:</label>
        <input type="password" name="Password" required>

        <input type="submit" value="Login">
    </form>
</div>
    </body>
</html>
