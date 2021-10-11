package com.quinnox.project.orderSupplies.empcrud.model;

public class Product {
	private int id;
	String name, description;
	int price;
	float rating;
	
	public Product() {

	}

	public Product(int id, String name, String description, int price, float rating) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.rating = rating;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public float getRating() {
		return rating;
	}

	public void setRating(float rating) {
		this.rating = rating;
	}
	
}
