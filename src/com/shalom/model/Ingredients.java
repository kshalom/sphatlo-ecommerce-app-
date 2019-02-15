package com.shalom.model;

public class Ingredients {
	
	private int id;
	private String polony;
	private String cheese;
	private String burger;
	private String lettice;
	private String russian;
	private String chips;
	private String boiledEgg;
	private String vianna;
	private String bacon;
	
	public Ingredients(int id, String polony, String cheese, String burger, String lettice, String russian,
			String chips, String boiledEgg, String vianna, String bacon) {
		super();
		this.id = id;
		this.polony = polony;
		this.cheese = cheese;
		this.burger = burger;
		this.lettice = lettice;
		this.russian = russian;
		this.chips = chips;
		this.boiledEgg = boiledEgg;
		this.vianna = vianna;
		this.bacon = bacon;
	}

	public Ingredients(String polony, String cheese, String burger, String lettice, String russian, String chips,
			String boiledEgg, String vianna, String bacon) {
		super();
		this.polony = polony;
		this.cheese = cheese;
		this.burger = burger;
		this.lettice = lettice;
		this.russian = russian;
		this.chips = chips;
		this.boiledEgg = boiledEgg;
		this.vianna = vianna;
		this.bacon = bacon;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPolony() {
		return polony;
	}

	public void setPolony(String polony) {
		this.polony = polony;
	}

	public String getCheese() {
		return cheese;
	}

	public void setCheese(String cheese) {
		this.cheese = cheese;
	}

	public String getBurger() {
		return burger;
	}

	public void setBurger(String burger) {
		this.burger = burger;
	}

	public String getLettice() {
		return lettice;
	}

	public void setLettice(String lettice) {
		this.lettice = lettice;
	}

	public String getRussian() {
		return russian;
	}

	public void setRussian(String russian) {
		this.russian = russian;
	}

	public String getChips() {
		return chips;
	}

	public void setChips(String chips) {
		this.chips = chips;
	}

	public String getBoiledEgg() {
		return boiledEgg;
	}

	public void setBoiledEgg(String boiledEgg) {
		this.boiledEgg = boiledEgg;
	}

	public String getVianna() {
		return vianna;
	}

	public void setVianna(String vianna) {
		this.vianna = vianna;
	}

	public String getBacon() {
		return bacon;
	}

	public void setBacon(String bacon) {
		this.bacon = bacon;
	}
	
	
}
