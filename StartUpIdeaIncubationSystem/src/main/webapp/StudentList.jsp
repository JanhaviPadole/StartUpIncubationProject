<%-- 
    Document   : StudentList
    Created on : 15 Sept 2025, 8:19:37 am
    Author     : padol
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.startupideaincubationsystem.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Register List</title>
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

    input[type="submit"] {
        background-color: #e74c3c;
        color: white;
        border: none;
        padding: 8px 16px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #c0392b;
    }

    a {
        color: #2980b9;
        text-decoration: none;
        font-weight: bold;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
    </head>
    <body>
    <div class="table-container">
        <h2>Student Register List</h2>
        <table border="1" cellpadding="8" cellspacing="0">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>File</th>
                <th>About</th>
                <th>Action</th>
            </tr>
            <%
                List<Student> studentlist = (List<Student>) request.getAttribute("studentlist");
                if (studentlist != null && !studentlist.isEmpty()) {
                    for (Student s : studentlist) {
            %>
            <tr>
                 <td><%= s.getStudID() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getEmail() %></td>
                <td><%= s.getPassword() %></td>
                <td>
                    <%
                        String filePath = s.getPhotoPath();
                        if (filePath != null && !filePath.isEmpty()) {
                    %>
                        <a href="<%= request.getContextPath() + "/uploads/" + new java.io.File(filePath).getName() %>" target="_blank">View File</a>
                    <%
                        } else {
                    %>
                        No file uploaded
                    <%
                        }
                    %>
                </td>
                <td><%= s.getAbout() %></td>
                    <td>
        <form action="DeleteStudentServlet" method="post" onsubmit="return confirm('Are you sure you want to delete this student?');">
            <input type="hidden" name="StudID" value="<%= s.getStudID() %>">
            <input type="submit" value="Delete">
        </form>
    </td>

            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="6">No students found.</td>
            </tr>
            <%
                }
%>
 </table>
    </div>
</body>



</html>
