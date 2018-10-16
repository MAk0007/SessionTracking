package com.itc.dao;


import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.hibernate.util.HibernateUtil;
import com.itc.beans.*;

import java.net.URI;

import javax.servlet.http.HttpSession;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.UriBuilder;

import org.glassfish.jersey.client.ClientConfig;


public class ProductDAO{

	public ArrayList<Product> ar = new ArrayList<Product>();


	public ArrayList<Product> add(com.itc.beans.Product product) {
		reduce(product.getId(),product.getQuantity());

		ar.add(product);
		return ar;
	}


	private void reduce(int id, int quantity) {
		try{
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://10.6.184.246:3306/springdemo","root1","root1");
			int quan=0;
			String sql = "select quantity from productlist where id=?";
			PreparedStatement ps1=con.prepareStatement(sql);
			ps1.setInt(1, id);
			ResultSet rs = ps1.executeQuery();
			while(rs.next()){
				quan= rs.getInt(1);
			}
			System.out.println("current Quan"+ quan) ;
			
			
			quan=quan-quantity;
			
			PreparedStatement ps=con.prepareStatement("update productlist set quantity=? where id=?");  
			ps.setInt(1,quan);
			ps.setInt(2,id);
			ps.executeUpdate();
			con.close();
		}catch (Exception e) {
			System.out.println("Exception "+e);		}
	}


	public ArrayList<Product> update(com.itc.beans.Product product) {

		for(int i=0;i<ar.size();i++){
			Product p = ar.get(i);
			if(p.getId()==product.getId()){
				p.setQuantity(product.getQuantity());
			}
		}
		return ar;
	}


	public ArrayList<Product> delete(int id) {
		for(int i=0;i<ar.size();i++){
			Product p = ar.get(i);
			if(p.getId()==id){
				ar.remove(p);
			}
		}
		return ar;
	}


	public com.itc.beans.Product get(int id) {
		Product pro = null;

		for(int i=0;i<ar.size();i++){
			Product p = ar.get(i);
			if(p.getId()==id){
				pro=p;
			}
		}
		System.out.println(pro.toString());

		return pro;
	}



	public boolean checkWS(com.itc.beans.Product p) {
		boolean status=false;
		String webServiceURI = "http://BLRPRGFWD31247";
		ClientConfig clientConfig = new ClientConfig();
		Client client = ClientBuilder.newClient(clientConfig);
		URI serviceURI = UriBuilder.fromUri(webServiceURI).port(8080).path("RestfulWS1").build();
		WebTarget webTarget = client.target(serviceURI);
		String st=webTarget.path("rest").path("CheckQuantity").path("in").queryParam("id", p.getId()).queryParam("quantity", p.getQuantity()).request().accept(MediaType.TEXT_PLAIN).get(String.class);
		System.out.println(st);
		if(st.equals("available")){
			status=true;
		}else{
			status=false;
		}
		return status;
	}


	public void confirmPayment(double totalprice, ArrayList<Product> ar2, String un) throws SQLException, ClassNotFoundException {
		/*	Session session = HibernateUtil.openSession();
	      Transaction tx = null;*/
		boolean status= false;
		String pname=null,time=null;
		int quantity=0;
		double pprice= 0;
		Date date = new Date();
	      System.out.println(date.toString());
	      time=date.toString();
		//	      int slno=1;
		Iterator<Product> it = ar2.iterator();
		for(int i =0;i<ar2.size();i++){

			System.out.println("i="+i);
			Product p = ar.get(i);
			pname= p.getPname();
			pprice=p.getPrice();
			quantity= p.getQuantity();

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://10.6.184.246:3306/springdemo","root1","root1");
			Statement st=con.createStatement();
			int s=st.executeUpdate("insert into billtable values('"+un+"','"+pname+"','"+pprice+"','"+quantity+"','"+totalprice+"','"+time+"')");

			con.close();
		}
	}


	public ArrayList<StoreDataBean> getHistory(String uname) throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://10.6.184.246:3306/springdemo","root1","root1");
		ArrayList<StoreDataBean> ar = new ArrayList<StoreDataBean>();
		String sql = "select * from billtable where username=?";
		PreparedStatement ps1=con.prepareStatement(sql);
		ps1.setString(1, uname);
		ResultSet rs = ps1.executeQuery();
		while(rs.next()){
			StoreDataBean sd = new StoreDataBean();
			sd.setUsername(rs.getString(1));
			sd.setPname(rs.getString(2));
			sd.setPprice(rs.getDouble(3));
			sd.setQuantity(rs.getInt(4));
			sd.setTotalprice(rs.getDouble(5));
			sd.setTime(rs.getString(6));
			ar.add(sd);
		}
		
		return ar;
	}

}



