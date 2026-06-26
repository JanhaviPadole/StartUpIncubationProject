/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.startupideaincubationsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author padol
 */
class StudentDAO {
        private static final String URL = "jdbc:mysql://localhost:3306/starup";
        private static final String USERNAME = "root";
        private static final String PASSWORD = "root";
        public int insertstudent(String name, String email, String password, String photoPath, String about) {
       int StudID = -1;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/starup", "root", "root");

        String query = "INSERT INTO student (Name, Email, Password, PhotoPath, About) VALUES (?, ?, ?, ?,  ?)";
        ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, photoPath);
        ps.setString(5, about);
       

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
public List<Student> getAllStudents() {
    List<Student> studentlist = new ArrayList<>();
    String sql = "SELECT * FROM student";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        PreparedStatement stmt = con.prepareStatement(sql);
        ResultSet rs = stmt.executeQuery();

        while (rs.next()) {
            studentlist.add(new Student(rs.getInt("StudID"),
                    rs.getString("Name"),
                    rs.getString("Email"),
                    rs.getString("PassWord"),
                    rs.getString("PhotoPath"),
                    rs.getString("About")
                   
            ));
        }

        rs.close();
        stmt.close();
        con.close();

    } catch (Exception e) {
        e.printStackTrace();
    }

    return studentlist;
}

public boolean deleteStudent(int StudID) {
    boolean result = false;
    String sql = "DELETE FROM student WHERE StudID = ?";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setInt(1, StudID);

        int rows = ps.executeUpdate();
        result = rows > 0;

        ps.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    return result;
}
public Student getStudent(String email, String password) {
        Student student = null;
        String sql = "SELECT * FROM student WHERE Email=? AND Password=?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                student = new Student(
                    rs.getInt("StudID"),
                    rs.getString("Name"),
                    rs.getString("Email"),
                    rs.getString("Password"),
                    rs.getString("PhotoPath"),
                    rs.getString("About")
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return student;
    }
public boolean validateLogin(String email, String password) {
    boolean isValid = false;
    String sql = "SELECT StudID FROM student WHERE Email=? AND Password=?";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, email);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            isValid = true; // Login credentials matched
        }

        rs.close();
        ps.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    return isValid;
}
public boolean updateStudent(int studID, String name, String email, String password, String photoPath, String about) {
    boolean isUpdated = false;
    String sql = "UPDATE student SET Name = ?, Email = ?, Password = ?, PhotoPath = ?, About = ? WHERE StudID = ?";

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, photoPath);
        ps.setString(5, about);
        ps.setInt(6, studID);

        int rows = ps.executeUpdate();
        isUpdated = rows > 0;

        ps.close();
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }

    return isUpdated;
}
}

