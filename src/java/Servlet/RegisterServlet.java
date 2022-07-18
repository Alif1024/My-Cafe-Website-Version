/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.DbCon;
import DAO.UserDao;
import Model.User;
import java.sql.SQLException;
/**
 *
 * @author nural
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String name = request.getParameter("register-name");
            String email = request.getParameter("register-email");
            String password = request.getParameter("register-password");
                
            User userModel = new User(name,email,password);
            
            UserDao regUser = new UserDao(DbCon.getConnection());
            if(regUser.saveUser(userModel)){
                response.sendRedirect("login.jsp");
            } else {
                out.println("failed input user");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
