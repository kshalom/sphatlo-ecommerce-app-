package com.shalom.model;

public class Item {
	
	
	private Sphatlo sphatlo;
	private int quantity;
	
	public Item() {
		super();
	}

	public Item(Sphatlo sphatlo, int quantity) {
		super();
		this.sphatlo = sphatlo;
		this.quantity = quantity;
	}

	public Sphatlo getSphatlo() {
		return sphatlo;
	}

	public void setSphatlo(Sphatlo sphatlo) {
		this.sphatlo = sphatlo;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
