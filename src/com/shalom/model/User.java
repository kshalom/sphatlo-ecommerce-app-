package com.shalom.model;

public class User {
	private int userId;
	private String name;
	private String surname;
	private String gender;
	private String mobile;
	private String email;
	private String password;
	
	public User(int userId,String name, String surname, String gender, String mobile, String email, String password) {
		super();
		this.userId = userId;
		this.name = name;
		this.surname = surname;
		this.gender = gender;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
	}
	
	public User(String name, String surname, String gender, String mobile, String email, String password) {
		super();
		this.name = name;
		this.surname = surname;
		this.gender = gender;
		this.mobile = mobile;
		this.email = email;
		this.password = password;
	}



	public User() {}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
