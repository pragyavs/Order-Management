package com.quinnox.project.orderSupplies.empcrud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.quinnox.project.orderSupplies.empcrud.model.Supplier;

public class SupplierDAO {
	public static List<Supplier> getSuppliers(int sup_id){
		List<Supplier> slist=new ArrayList<Supplier>();
		
		try{
			Connection con=ConnectionDAO.getConnection();
			PreparedStatement ps=con.prepareStatement("select sup_id, sup_name from suppliers where sup_id=" + sup_id);
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
	
	public static int addSupplier(Supplier s) {
		int status = 0;
		
		try {
			Connection con=ConnectionDAO.getConnection();
			
			PreparedStatement ps = con.prepareStatement("insert into suppliers values (?,?,?,?)");
			
			Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("Select sup_id_seq.NEXTVAL from dual");
            
            int sup_id = 0;
            if(rs.next())        
                sup_id = rs.getInt(1);
            
            ps.setInt(1, sup_id);
            ps.setString(2, s.getName());
            ps.setString(3, s.getEmail());
            ps.setString(4, s.getPassword());
            
            status = ps.executeUpdate();
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return status;
	}
}
