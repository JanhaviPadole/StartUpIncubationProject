/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.startupideaincubationsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author padol
 */
public class IdeaDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/starup"; 
    private static final String USERNAME = "root";
    private static final String PASSWORD = "root";

    private Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }
public int insertIdea(Idea idea) {
    int StudID = -1;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/starup", "root", "root");

        String query = "INSERT INTO ideas (title, tech, team, filepath) VALUES (?, ?, ?, ?)";
        ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
        ps.setString(1,idea.getTitle());
        ps.setString(2, idea.getTech());
        ps.setString(3,idea.getTeam());
        ps.setString(4, idea.getFilepath());
       

        int rows = ps.executeUpdate();
        if (rows > 0) {
            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                StudID = rs.getInt(1);
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    return StudID;
}

       public List<Idea> getAllIdeas() {
        List<Idea> ideas = new ArrayList<>();
        String sql = "SELECT * FROM ideas";

        try (Connection con = getConnection();
             PreparedStatement stmt = con.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                int id = rs.getInt("id");
                String title = rs.getString("title");
                String tech = rs.getString("tech");
                String team = rs.getString("team");
                String filepath = rs.getString("filepath");

                Idea idea = new Idea(title, tech, team, filepath);
                ideas.add(idea);
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return ideas;
    }

}
