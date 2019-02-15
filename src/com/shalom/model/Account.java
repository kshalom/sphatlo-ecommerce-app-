package com.shalom.model;

public class Account {
	
	private String bankName;
	private int cardNumber;
	private int branchCode;
	private double balance;
	
	public Account(String bankName, int cardNumber, int branchCode, double balance) {
		super();
		this.bankName = bankName;
		this.cardNumber = cardNumber;
		this.branchCode = branchCode;
		this.balance = balance;
	}

	public Account() {
		super();
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public int getCardNumber() {
		return cardNumber;
	}

	public void setCardNumber(int cardNumber) {
		this.cardNumber = cardNumber;
	}

	public int getBranchCode() {
		return branchCode;
	}

	public void setBranchCode(int branchCode) {
		this.branchCode = branchCode;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}
	
}
