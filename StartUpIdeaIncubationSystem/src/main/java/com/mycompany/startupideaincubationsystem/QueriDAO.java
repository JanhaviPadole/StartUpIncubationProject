/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.startupideaincubationsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author padol
 */
public class QueriDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/starup";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";
    
    public boolean insertqueries(String name, String email, String message) {
    boolean success = false;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);

        String checkQuery = "SELECT COUNT(*) FROM queries WHERE message = ?";
        PreparedStatement checkStmt = con.prepareStatement(checkQuery);
        checkStmt.setString(1, message);
        ResultSet rs = checkStmt.executeQuery();

        if (rs.next() && rs.getInt(1) > 0) {
            String updateQuery = "UPDATE queries SET name = ?, email = ? WHERE message = ?";
            PreparedStatement updateStmt = con.prepareStatement(updateQuery);
            updateStmt.setString(1, name);
            updateStmt.setString(2, email);
            updateStmt.setString(3, message);

            int rowsUpdated = updateStmt.executeUpdate();
            success = rowsUpdated > 0;
        } else {

            String insertQuery = "INSERT INTO queries (name, email, message) VALUES (?, ?, ?)";
            PreparedStatement insertStmt = con.prepareStatement(insertQuery);
            insertStmt.setString(1, name);
            insertStmt.setString(2, email);
            insertStmt.setString(3, message);

            int rowsInserted = insertStmt.executeUpdate();
            success = rowsInserted > 0;
        }

        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    return success;
}
}
