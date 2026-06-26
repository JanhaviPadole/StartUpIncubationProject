<%-- 
    Document   : Invalid
    Created on : 12 Sept 2025, 9:36:43 am
    Author     : padol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invalid Admin Page</title>
    <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background-image: url('background.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      text-align: center;
      padding: 50px;
    }
    .message-box {
      background-color: rgba(192,57,43, 0.8);
      color: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
      display: inline-block;
    }
    a {
      color: #fff;
      text-decoration: underline;
    }
  </style>
    </head>
    <body>
  <div class="message-box">
    <h1>Invalid Credentials</h1>
    <p>Oops! Something went wrong while connecting, please check your username and password is entered correctly.</p>
    <p><a href="AdminLogin.jsp">Try Again</a></p>
  </div>
</body>
</html>
