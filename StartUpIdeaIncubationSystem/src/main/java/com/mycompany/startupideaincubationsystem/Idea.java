/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.startupideaincubationsystem;

/**
 *
 * @author padol
 */
public class Idea {
    private int id;
    private String title;
    private String tech;
    private String team;
    private String filepath;

    public Idea(String title, String tech, String team, String filepath) {
        this.title = title;
        this.tech = tech;
        this.team = team;
        this.filepath = filepath;
    }
    public Idea(int id,String title, String tech, String team, String filepath) {
        this.id=id;
        this.title = title;
        this.tech = tech;
        this.team = team;
        this.filepath = filepath;
    }
    public int getID() { return id; }
    public String getTitle() { return title; }
    public String getTech() { return tech; }
    public String getTeam() { return team; }
    public String getFilepath() { return filepath; }
    
}
