<%-- 
    Document   : addideas
    Created on : 11 Sept 2025, 10:49:29 pm
    Author     : padol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <head>
    <title>Add Idea</title>
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

    .form-container {
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

    input, textarea {
        width: 100%;
        padding: 10px;
        margin-top: 12px;
        border-radius: 6px;
        border: 1px solid #ccc;
    }

    input[type="file"] {
        color: #fff;
    }

    button {
        background-color: #3498db;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        margin-top: 20px;
        font-weight: bold;
    }

    button:hover {
        background-color: #2980b9;
    }
</style>
</head>
<body>
    <div class="form-container">
        <h2>Submit Your Idea</h2>
        <form action="AddIdeaServlet" method="post" enctype="multipart/form-data">
            <input type="text" name="title" placeholder="Idea Title" required />
            <input type="text" name="tech" placeholder="Technology Used" required />
            <input type="text" name="team" placeholder="Team Members" required />
            <input type="file" name="filepath" required />
            <button type="submit">Submit</button>
        </form>
    </div>
</body>

</html>
