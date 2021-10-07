package com.quinnox.project.orderSupplies.empcrud.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.quinnox.project.orderSupplies.empcrud.model.Employee;

public class EmployeeDAO {
	public static Connection getConnection(){
		Connection con = null;
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            
            con=DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:xe","quint","redhat123");
        }
        catch(Exception e){
        	e.printStackTrace();
        }
        return con;
    }
	
	public static boolean loginEmployee(Employee u){
        boolean status=false;
        System.out.println(u.getEmail()+" "+u.getPassword() + " " + u.getDesig());
        try{
            Connection con=getConnection();
            PreparedStatement ps;
            if(u.getDesig().equals("supplier")) {
            	ps=con.prepareStatement("select email,password from suppliers where "
                        +"email=? and password=?");
            	ps.setString(1, u.getEmail());
                ps.setString(2, u.getPassword());
            }
            else {
            	ps=con.prepareStatement("select emailid,password from employees where "
                    +"emailid=? and password=? and desig=?");
            	
            	ps.setString(1, u.getEmail());
                ps.setString(2, u.getPassword());
                ps.setString(3, u.getDesig());
            }
            

            ResultSet rs=ps.executeQuery();
            status=rs.next();
            while(rs.next())
            {
                System.out.println(rs.getString(1)+" "+rs.getString(2));
            }
        }
        catch(Exception e){
        	System.out.println(e);
        }
        return status;
    }
}
