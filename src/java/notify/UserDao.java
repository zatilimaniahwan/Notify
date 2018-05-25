/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package notify;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import notify.model.User;
/**
 *
 * @author Zatil Imani Ahwan
 */
public class UserDao {
    private Connection con;
    
    public UserDao(){
        con = DbConnection.getCon();
    }
    
    public void updateUser(User user)  {
        try{
            PreparedStatement ps =con.prepareStatement("update users set user_group=?,updated_by=?,updated_at=? where id=?");
            ps.setInt(1, user.getUserGroup());
            ps.setString(2, user.getUpdatedBy());
            ps.setDate(3,new java.sql.Date(user.getUpdatedDt().getTime()));
            ps.executeUpdate();
            
        }catch(SQLException ex){
            ex.printStackTrace();
        }
    }
    public List<User> getAllUsers() {
       List<User> users = new ArrayList<User>();
        try {
            Statement statement = con.createStatement();
            ResultSet rs = statement.executeQuery("select * from users");
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setMatricNo(rs.getString("matric_no"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setEmailAddress(rs.getString("email_address"));
                user.setUserGroup(rs.getInt("user_group"));
                user.setDesignation(rs.getInt("designation"));
                user.setUpdatedBy(rs.getString("updated_by"));
                user.setUpdatedDt(rs.getDate("updated_dt"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }
     public User getUserById(int id) {
        User user = new User();
        try {
            PreparedStatement preparedStatement = con.
                    prepareStatement("select * from users where id=?");
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setMatricNo(rs.getString("matric_no"));
                user.setName(rs.getString("name"));
                user.setPassword(rs.getString("password"));
                user.setEmailAddress(rs.getString("email_address"));
                user.setUserGroup(rs.getInt("user_group"));
                user.setDesignation(rs.getInt("designation"));
                user.setUpdatedBy(rs.getString("updated_by"));
                user.setUpdatedDt(rs.getDate("updated_dt"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    
}
