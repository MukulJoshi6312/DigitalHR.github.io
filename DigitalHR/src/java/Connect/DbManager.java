/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class DbManager {

    Connection con = null; //Instance varible

    public DbManager() throws ClassNotFoundException, SQLException {
      Class.forName("com.mysql.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost:3306/digitalhrdb","root", "");
    }
    public boolean insretUpdateDelete(String query){
        
        try {
            PreparedStatement ps = con.prepareStatement(query);
           int n= ps.executeUpdate();
           if(n>0)
               return true;
           else
               return false;
     
           
        } catch (SQLException ex) {
           return false;
        }
    }
    public ResultSet selectData(String query) throws SQLException{
        
        PreparedStatement ps = con.prepareStatement(query);
        
        ResultSet rs = ps.executeQuery();
        return rs;
    }

}
