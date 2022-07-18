/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.User;
/**
 *
 * @author nural
 */
public class UserDao {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    public boolean saveUser(User userr){
        try {
            query = "INSERT INTO tbuser(name,email,password) VALUES (?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setString(1, userr.getName());
            pst.setString(2, userr.getEmail());
            pst.setString(3, userr.getPassword());
            pst.executeUpdate();
            return true;
        }catch(Exception e){
            return false;
        }
    }
    
    public User userLogin(String email, String password) {
        User user = null;
        try {
            query = "SELECT * FROM tbuser WHERE email=? and password=?";
            pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            rs = pst.executeQuery();
            
            if(rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
            }
        }catch(Exception e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
         return user;
    }
}

//clear
