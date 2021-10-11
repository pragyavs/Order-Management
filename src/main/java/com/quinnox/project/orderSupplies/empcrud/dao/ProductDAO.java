package com.quinnox.project.orderSupplies.empcrud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.quinnox.project.orderSupplies.empcrud.model.Product;

public class ProductDAO {
	public static List<Product> getProducts(){
		List<Product> plist=new ArrayList<Product>();
		
		try{
			Connection con=ConnectionDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from products");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				Product p = new Product();
				p.setName(rs.getString("prod_name"));
				p.setId(rs.getInt("prod_id"));
				p.setPrice(rs.getInt("price"));
				p.setDescription(rs.getString("des"));
				p.setRating(rs.getInt("rating"));

				plist.add(p);
			}
		}
		catch(Exception e){
			System.out.println(e);
			}
			return plist;
	}
	
	public static Product getProduct(int prod_id) {
		Product p = new Product();
		
		try{
			Connection con=ConnectionDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("select prod_id, prod_name from products where prod_id=" + prod_id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				p.setName(rs.getString("prod_name"));
				p.setId(rs.getInt("prod_id"));
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return p;
	}
	
	public static int save(Product u){
		System.out.println(u.getId());
		System.out.println(u.getName());
		System.out.println(u.getPrice());
		System.out.println(u.getRating());
		System.out.println(u.getDescription());
		//System.out.println(u.getQuantity());
		int status=0;
		try{
			Connection con=ConnectionDAO.getConnection();
			PreparedStatement ps=con.prepareStatement(
					"insert into Products(Prod_ID,Prod_Name,Price,Rating,Des) values(?,?,?,?,?)");

			ps.setInt(1, u.getId());
			ps.setString(2, u.getName());
			ps.setInt(3, u.getPrice());
			ps.setFloat(4, u.getRating());
			ps.setString(5, u.getDescription());
			//ps.setInt(6, u.getQuantity());
			status=ps.executeUpdate();
		}catch(Exception e)
		{System.out.println(e);}
		return status;
	}
}
