package com.shalom.model;

public class Sphatlo {
	
	private int sphatloId;
	private String name;
	private String description;
	private double price;
	
	public Sphatlo(int sphatloId, String name, String description, double price) {
		super();
		this.sphatloId = sphatloId;
		this.name = name;
		this.description = description;
		this.price = price;
	}

	public Sphatlo(String name, String description, double price) {
		super();
		this.name = name;
		this.description = description;
		this.price = price;
	}

	public int getSphatloId() {
		return sphatloId;
	}

	public void setSphatloId(int sphatloId) {
		this.sphatloId = sphatloId;
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

	public double getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	
}
