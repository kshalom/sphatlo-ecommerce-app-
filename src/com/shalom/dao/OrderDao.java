package com.shalom.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.shalom.model.Account;
import com.shalom.model.Item;
import com.shalom.model.Order;
import com.shalom.model.Sphatlo;
import com.shalom.model.User;

public class OrderDao {
	
	private DataSource theDataSource;

	public OrderDao(DataSource theDataSource) {
		super();
		this.theDataSource = theDataSource;
	}
	
	public List<Order> getOrder(){
		List<Order> orderList = new ArrayList<>();
		
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from orders";
			conn = theDataSource.getConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			
			while(rs.next()) {
				int quantity = rs.getInt("quantity");
				int orderId = rs.getInt("orderId");
				int sphatloId = rs.getInt("sphatloId");
				String name = rs.getString("name");
				String description = rs.getString("description");
				double price = rs.getFloat("price");
				
				
				Sphatlo sphatlo = new Sphatlo(sphatloId, name, description, price);
				Item item = new Item(sphatlo, quantity);
				//Order order = new Order(orderId, item);
				//orderList.add(order);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,statement,rs);
		}
		
		return orderList;
	}
	
public void addOrder(Item item) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = theDataSource.getConnection();
			
			String sql = "insert into orders" + "(sphatloId,name,description,price,quantity)"
											+"values(?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			
			//ps.setInt(1, user.getUserId());
			ps.setInt(1, item.getSphatlo().getSphatloId());
			ps.setString(2, item.getSphatlo().getName());
			ps.setString(3, item.getSphatlo().getDescription());
			ps.setDouble(4, item.getSphatlo().getPrice());
			ps.setInt(5, item.getQuantity());
			
			ps.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, ps, null);
		}
	}
	
public boolean isAccountValid(int cardNumber, int branchCode, String bankName) {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	boolean valid = false;
	try {
		conn = theDataSource.getConnection();
		String sql = "select * from account where card_number=?"
					+ " and branch_code=?"
					+ " and bank_name=?";
		ps = conn.prepareStatement(sql);
		
		ps.setInt(1, cardNumber);
		ps.setInt(2, branchCode);
		ps.setString(3, bankName);
		
		rs = ps.executeQuery();
		
		if(rs.next()) {
			valid = true;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close(conn, ps, null);
	}
	return valid;
}
	
	private static void close(Connection conn, Statement statement, ResultSet rs) {
		try {
			if(conn != null) {
				conn.close();
			}
			if(statement != null) {
				statement.close();
			}
			if(rs != null) {
				rs.close();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
