<%-- 
    Document   : IdeaList
    Created on : 15 Sept 2025, 8:20:40 am
    Author     : padol
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.startupideaincubationsystem.Idea" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Idea List</title>
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

    h2 {
        text-align: center;
        color: #2ecc71;
        margin-bottom: 30px;
    }

    .table-container {
        background-color: rgba(44, 62, 80, 0.85);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 0 15px rgba(0,0,0,0.3);
        max-width: 900px;
        margin: auto;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        background-color: #ecf0f1;
        color: #2c3e50;
        border-radius: 10px;
        overflow: hidden;
    }

    th, td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #bdc3c7;
    }

    th {
        background-color: #34495e;
        color: white;
    }

    tr:hover {
        background-color: #dfe6e9;
    }

    .btn {
        padding: 6px 12px;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 4px;
        text-decoration: none;
        cursor: pointer;
        font-weight: bold;
    }

    .btn:hover {
        background-color: #218838;
    }
</style>

    </head>
    <body>
    <div class="table-container">
        <h2>Submitted Ideas</h2>
        <table>
            <tr>
                <th>Title</th>
                <th>Technology</th>
                <th>Team</th>
                <th>File</th>
            </tr>
            <% List<Idea> ideas = (List<Idea>) request.getAttribute("IdeasList");
               for (Idea idea : ideas) { %>
            <tr>
                <td><%= idea.getTitle() %></td>
                <td><%= idea.getTech() %></td>
                <td><%= idea.getTeam() %></td>
                <td>
                    <a href="<%= idea.getFilepath() %>" target="_blank" class="btn">View File</a>
                </td>
            </tr>
            <% } %>
        </table>
    </div>
</body>
</html>
