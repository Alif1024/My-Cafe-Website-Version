/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.Review;
/**
 *
 * @author nural
 */
public class ReviewDao {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    public ReviewDao(Connection con) {
        this.con = con;
    }
    
    public boolean sendMessage(Review revieww){
        try {
            query = "INSERT INTO tbmessage(name,message) VALUES (?,?)";
            pst = this.con.prepareStatement(query);
            pst.setString(1, revieww.getName());
            pst.setString(2, revieww.getMessage());
            pst.executeUpdate();
            return true;
        }catch (Exception e){
            return false;
        }
    }
    
    
}
