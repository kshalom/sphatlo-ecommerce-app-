package com.shalom.model;

public class Order {
	
	private int orderId;
	private Item item;
	private Sphatlo sphatlo;
	
	public Order() {
		super();
	}

	public Order(int orderId,Sphatlo sphatlo) {
		super();
		this.orderId = orderId;
		this.sphatlo = sphatlo;
	}

	public Order(Item item) {
		super();
		this.item = item;
	}
	
	public Order(Sphatlo sphatlo) {
		super();
		this.sphatlo = sphatlo;
	}
	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}
	
}
