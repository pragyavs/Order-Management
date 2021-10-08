package com.quinnox.order.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.quinnox.order.model.Products;


public class ProductsDAO {
	
	public static Connection getConnection()
	{

		Connection con = null;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");

			con=DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe","project", "redhat123");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}
	
	
	public static List<Products> getAllRecords(){
		List<Products> list=new ArrayList<Products>();
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from products");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Products u=new Products();
				u.setP_id(rs.getInt("Prod_ID"));
				u.setP_name(rs.getString("Prod_NAME"));
				u.setPrice(rs.getInt("PRICE"));
				u.setRating(rs.getFloat("RATING"));
				u.setDes(rs.getString("DES"));
				u.setQuantity(rs.getInt("Quantity"));
				list.add(u);
			}
		}
		catch(Exception e)
		{System.out.println(e);
		}
		return list;

}
	
	public static int save(Products u){
		System.out.println(u.getP_id());
		System.out.println(u.getP_name());
		System.out.println(u.getPrice());
		System.out.println(u.getRating());
		System.out.println(u.getDes());
		System.out.println(u.getQuantity());
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement(
					"insert into Products(Prod_ID,Prod_Name,Price,Rating,Des,Quantity) values(?,?,?,?,?,?)");

			ps.setInt(1, u.getP_id());
			ps.setString(2, u.getP_name());
			ps.setInt(3, u.getPrice());
			ps.setFloat(4, u.getRating());
			ps.setString(5, u.getDes());
			ps.setInt(6, u.getQuantity());
			status=ps.executeUpdate();
		}catch(Exception e)
		{System.out.println(e);}
		return status;
	}
	
	
}
