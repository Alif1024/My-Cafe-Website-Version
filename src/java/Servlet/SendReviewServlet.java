/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Connection.DbCon;
import DAO.ReviewDao;
import Model.Review;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nural
 */
@WebServlet(name = "SendReviewServlet", urlPatterns = {"/SendReviewServlet"})
public class SendReviewServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            String name = request.getParameter("review-name");
            String message = request.getParameter("review-message");
            
                
            Review msg = new Review(name,message);
            
            ReviewDao sendMsg = new ReviewDao(DbCon.getConnection());
            if(sendMsg.sendMessage(msg)){
                response.sendRedirect("index.jsp");
            } else {
                out.println("failed input message");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    

}
