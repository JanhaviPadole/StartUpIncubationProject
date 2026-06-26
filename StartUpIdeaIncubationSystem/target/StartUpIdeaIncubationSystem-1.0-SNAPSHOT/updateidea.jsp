<%-- 
    Document   : updateidea
    Created on : 27 Sept 2025, 9:39:40 am
    Author     : padol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.startupideaincubationsystem.Idea" %>
<!DOCTYPE html>

  
<%
    Idea idea = (Idea) request.getAttribute("idea");
%>
<html>
<head>
    <title>Update Idea</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        form {
            max-width: 500px;
            margin: auto;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input[type="text"], textarea {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
        }
        input[type="submit"] {
            margin-top: 15px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h2>Update Idea</h2>
    <form action="SaveIdeaUpdateController" method="post">
        <input type="hidden" name="action" value="update">
        <input type="hidden" name="oldTitle" value="<%= idea.getTitle() %>">

        <label for="title">Title:</label>
        <input type="text" name="title" id="title" value="<%= idea.getTitle() %>" required>

        <label for="tech">Technology:</label>
        <input type="text" name="tech" id="tech" value="<%= idea.getTech() %>" required>

        <label for="team">Team:</label>
        <input type="text" name="team" id="team" value="<%= idea.getTeam() %>" required>

        <label for="filepath">File Path:</label>
        <input type="text" name="filepath" id="filepath" value="<%= idea.getFilepath() %>" required>

        <input type="submit" value="Update Idea">
    </form>
</body>
</html>