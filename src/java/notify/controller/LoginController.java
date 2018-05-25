/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package notify.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import notify.DbConnection;
/**
 *
 * @author Zatil Imani Ahwan
 */
public class LoginController extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

       try {
            Connection con = DbConnection.getCon();
            PreparedStatement ps = con.prepareStatement("select * from users where name=? and password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                response.sendRedirect("home.jsp");
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                
            }else{
               response.sendRedirect("index.jsp");;
            }
        }catch(SQLException e){
            e.printStackTrace();
    }
  
    }   
}
    


