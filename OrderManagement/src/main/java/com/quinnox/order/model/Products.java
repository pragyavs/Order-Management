package com.quinnox.order.model;

public class Products {
	
	private int p_id,price,quantity;
	private float rating;
	private String p_name,des;
	
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Products(int p_id, int price, int quantity, float rating, String p_name, String des) {
		super();
		this.p_id = p_id;
		this.price = price;
		this.quantity = quantity;
		this.rating = rating;
		this.p_name = p_name;
		this.des = des;
	}

	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}
		
	

}
