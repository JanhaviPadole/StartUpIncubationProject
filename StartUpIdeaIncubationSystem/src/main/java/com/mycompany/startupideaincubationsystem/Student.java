/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.startupideaincubationsystem;

/**
 *
 * @author padol
 */
public class Student {
    private int StudID;
    private String Name;
    private String Email;
    private String Password;
    private String PhotoPath;
    private String About;

    public Student() {}

    public Student(String Name, String Email, String Password, String PhotoPath, String About) {
        this.Name = Name;
        this.Email = Email;
        this.Password = Password;
        this.PhotoPath = PhotoPath;
        this.About = About;
    }
    public Student(int StudID,String Name, String Email, String Password, String PhotoPath, String About) {
        this.StudID = StudID;
        this.Name = Name;
        this.Email = Email;
        this.Password = Password;
        this.PhotoPath = PhotoPath;
        this.About = About;
    }
    public int getStudID() { return StudID; }
    public String getName() { return Name; }
    public String getEmail() { return Email; }
    public String getPassword() { return Password; }
    public String getPhotoPath() { return PhotoPath; }
    public String getAbout() { return About; }
}


