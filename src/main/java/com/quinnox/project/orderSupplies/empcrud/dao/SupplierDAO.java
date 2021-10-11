package com.quinnox.project.orderSupplies.empcrud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.quinnox.project.orderSupplies.empcrud.model.Supplier;

public class SupplierDAO {
	public static List<Supplier> getSuppliers(int productId){
		List<Supplier> slist=new ArrayList<Supplier>();
		
		try{
			Connection con=ConnectionDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("select sup_id, sup_name from suppliers where prod_id=" + productId);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				Supplier s = new Supplier();
				s.setName(rs.getString("sup_name"));
				s.setSupplierId(rs.getInt("sup_id"));

				slist.add(s);
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return slist;
	}
	
	public static Supplier getSupplier(int sup_id) {
		Supplier s = new Supplier();
		
		try{
			Connection con=ConnectionDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("select sup_id, sup_name from suppliers where sup_id=" + sup_id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				s.setName(rs.getString("sup_name"));
				s.setSupplierId(rs.getInt("sup_id"));
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return s;
	}
}
