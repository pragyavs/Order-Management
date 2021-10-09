package com.quinnox.order.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.quinnox.order.model.Orders;

public class OrdersDAO {

	
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
	
	
	public static List<Orders>getAllRecords(){
		List<Orders> list=new ArrayList<Orders>();
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from orders where next_state='supplier'AND rejected_by!='Supplier'");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Orders u=new Orders();
				u.setOrder_id(rs.getInt("Order_id"));
				u.setEmp_id(rs.getInt("emp_id"));
				u.setMgr_id(rs.getInt("mgr_id"));
				u.setOrder_date(rs.getString("Order_date")); 
				u.setComments(rs.getString("Comments"));
				u.setProd_id(rs.getInt("Prod_id"));
				u.setSupplier_id(rs.getInt("supplier_id"));
				u.setStatus(rs.getString("status"));
				u.setRejctedBy(rs.getString("rejected_by"));
				u.setNext_state(rs.getString("next_state"));
				list.add(u);
			}
		}
		catch(Exception e)
		{System.out.println(e);
		}
		return list;

}
	
	public static Orders getRecordById(int Order_id){
		Orders u=null;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from Orders where Order_id=?");
			ps.setInt(1,Order_id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				u=new Orders();
				u.setOrder_id(rs.getInt("Order_id"));
				u.setEmp_id(rs.getInt("emp_id"));
				u.setMgr_id(rs.getInt("mgr_id"));
				u.setOrder_date(rs.getString("Order_date")); 
				u.setComments(rs.getString("Comments"));
				u.setProd_id(rs.getInt("Prod_id"));
				u.setSupplier_id(rs.getInt("supplier_id"));
				u.setStatus(rs.getString("status"));
				u.setRejctedBy(rs.getString("rejected_by"));
				u.setNext_state(rs.getString("next_state"));
			}
		}catch(Exception e){System.out.println(e);}
		return u;
	}
	
	
	public static int acceptOrder(Orders u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement(
					"update Orders set comments=?,status=?,Next_state=? where Order_id=?");
			
			ps.setString(1,u.getComments());
			ps.setString(2,u.getStatus());
			ps.setString(3,u.getNext_state());
			ps.setInt(4,u.getOrder_id());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	
	
	public static int rejectOrder(Orders u){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement(
					"update Orders set comments=?,status=?,Next_state=?,rejected_by=? where Order_id=?");
			
			ps.setString(1,u.getComments());
			ps.setString(2,u.getStatus());
			ps.setString(3,u.getNext_state());
			ps.setString(4, u.getRejctedBy());
			ps.setInt(5,u.getOrder_id());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	
}
