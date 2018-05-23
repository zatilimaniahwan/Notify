
import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Zatil Imani Ahwan
 */
public class DbConnectionTest {
     public static void main(String[]args){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver found");
        }catch(Exception ex){
            System.out.print("Driver not found"+ex);
        }
        String url="jdbc:mysql://localhost/notify?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        String user="root";
        String password="";
        
        Connection con=null;
        try{
            con=DriverManager.getConnection(url,user,password);
            System.out.print("connection successful");
        }catch(Exception ex){
            System.out.print("fail"+ex);
        }
    }
}
