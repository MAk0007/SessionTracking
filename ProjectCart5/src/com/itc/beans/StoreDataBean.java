package com.itc.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="billtable")
public class StoreDataBean {
	
	@Column(name ="username")
	private String username;
	
	@Column(name ="pname")
	private String pname;

	@Column(name ="pprice")
	private double	pprice;
	
	@Column(name ="pquantity")
	private int quantity;
	
	@Column(name ="totalprice")
	private double totalprice;
	
	@Column(name ="time")
	private String time;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public double getPprice() {
		return pprice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	public void setPprice(double pprice) {
		this.pprice = pprice;
	}


	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public StoreDataBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public StoreDataBean(String username, String pname, double pprice, int quantity, double totalprice, String time) {
		super();
		this.username = username;
		this.pname = pname;
		this.pprice = pprice;
		this.quantity = quantity;
		this.totalprice = totalprice;
		this.time = time;
	}

	@Override
	public String toString() {
		return "StoreDataBean [username=" + username + ", pname=" + pname + ", pprice=" + pprice + ", quantity="
				+ quantity + ", totalprice=" + totalprice + ", time=" + time + "]";
	}

	


	

	
}
