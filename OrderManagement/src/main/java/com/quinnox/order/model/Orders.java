package com.quinnox.order.model;

public class Orders {
	
	private int order_id,emp_id,mgr_id,prod_id,supplier_id;
	private String comments,status,rejctedBy,next_state,order_date;
	
	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Orders(int order_id, int emp_id, int mgr_id, int prod_id, int supplier_id, String comments, String rejctedBy,
		String status,	String next_state, String order_date) {
		super();
		this.order_id = order_id;
		this.emp_id = emp_id;
		this.mgr_id = mgr_id;
		this.prod_id = prod_id;
		this.supplier_id = supplier_id;
		this.comments = comments;
		this.rejctedBy = rejctedBy;
		this.next_state = next_state;
		this.order_date = order_date;
		this.status=status;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(int emp_id) {
		this.emp_id = emp_id;
	}

	public int getMgr_id() {
		return mgr_id;
	}

	public void setMgr_id(int mgr_id) {
		this.mgr_id = mgr_id;
	}

	public int getProd_id() {
		return prod_id;
	}

	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}

	public int getSupplier_id() {
		return supplier_id;
	}

	public void setSupplier_id(int supplier_id) {
		this.supplier_id = supplier_id;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getRejctedBy() {
		return rejctedBy;
	}

	public void setRejctedBy(String rejctedBy) {
		this.rejctedBy = rejctedBy;
	}

	public String getNext_state() {
		return next_state;
	}

	public void setNext_state(String next_state) {
		this.next_state = next_state;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

}
