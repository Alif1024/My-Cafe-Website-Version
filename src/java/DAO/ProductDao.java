/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.Product;
import Model.Cart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.*;

/**
 *
 * @author nural
 */
public class ProductDao {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public ProductDao(Connection con) {
        this.con = con;
    }
    
    public List<Product> getAllProducts(){
        List<Product> products = new ArrayList<Product>();
        
        try {
            query = "SELECT * FROM tbbarang";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery();
            while(rs.next()){
                Product row = new Product();
                row.setId(rs.getInt("id"));
                row.setNama(rs.getString("nama"));
                row.setKategori(rs.getString("kategori"));
                row.setHarga(rs.getDouble("harga"));
                row.setImage(rs.getString("gambar"));
                
                products.add(row);
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        return products;
    }
    
    
    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<Cart>();
        
        try {
            if(cartList.size()>0) {
                for(Cart item:cartList) {
                    query = "SELECT * FROM tbbarang WHERE id=?";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    while(rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getInt("id"));
                        row.setNama(rs.getString("nama"));
                        row.setKategori(rs.getString("kategori"));
                        row.setHarga(rs.getDouble("harga")*item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        products.add(row);
                    }
                }
            }
            
        }catch(Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        
        return products;
    }
    
    public Product getSingleProduct(int id) {
        Product row = null;
        
        try {
            query = "SELECT * FROM tbbarang WHERE id=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            
            while(rs.next()) {
                row = new Product();
                row.setId(rs.getInt("id"));
                row.setNama(rs.getString("nama"));
                row.setKategori(rs.getString("kategori"));
                row.setHarga(rs.getDouble("harga"));
                row.setImage(rs.getString("gambar"));
            }
            
        }catch (Exception e) {
            e.printStackTrace();
        }
        
        return row;
    }
    
    public double getTotalCartPrice(ArrayList<Cart> cartList) {
        double sum=0;
        
        try {
            if(cartList.size()>0) {
                for(Cart item:cartList) {
                    query = "SELECT harga from tbbarang WHERE id=? ";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    
                    while(rs.next()){
                        sum+=rs.getDouble("harga")*item.getQuantity();
                    }
                }
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return sum;
    }
    
}
