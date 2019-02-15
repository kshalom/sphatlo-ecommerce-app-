package com.shalom.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.shalom.model.Sphatlo;
import com.shalom.model.User;

public class SphatloDao {
	
	private DataSource theDataSource;
	
	public SphatloDao(DataSource dataSource) {
		theDataSource = dataSource; 
	}
	
	public List<User> getUsers(){
		List<User> userList = new ArrayList<>();
		
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from user";
			conn = theDataSource.getConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			
			while(rs.next()) {
				int userId = rs.getInt("userId");
				String name = rs.getString("name");
				String surname = rs.getString("surname");
				String gender = rs.getString("gender");
				String mobile = rs.getString("mobile");
				String email = rs.getString("email");
				String password = rs.getString("password");
				
				User user = new User(userId,name,surname,gender,mobile,email,password);
				userList.add(user);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,statement,rs);
		}
		
		return userList;
	}
	
	public void addUser(User user) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = theDataSource.getConnection();
			
			String sql = "insert into user" + "(name,surname,gender,mobile,email,password)"
											+"values(?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			
			//ps.setInt(1, user.getUserId());
			ps.setString(1, user.getName());
			ps.setString(2, user.getSurname());
			ps.setString(3, user.getGender());
			ps.setString(4, user.getMobile());
			ps.setString(5, user.getEmail());
			ps.setString(6, user.getPassword());
			
			ps.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, ps, null);
		}
	}
	
	public User getUser(int userId) {
		
		User theUser = null;
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		
		try {
			conn = theDataSource.getConnection();
			String sql = "select * from user where userId=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, userId);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				//userId = rs.getInt("userId");
				String name = rs.getString("name");
				String surname = rs.getString("surname");
				String gender = rs.getString("gender");
				String mobile = rs.getString("mobile");
				String email = rs.getString("email");
				String password = rs.getString("password");
				
				theUser = new User(userId,name,surname,gender,mobile,email,password);
			}else {
				throw new Exception("Could not find user id: " + userId);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,ps,rs);
		}
		return theUser;
	}
	
	public void updateUser(User user) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = theDataSource.getConnection();
			
			String sql = "update user" + "set userId=?,name=?, surname=?, gender=?, mobile=?, email=?, password=?"
									   +" where userId=?";
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, user.getUserId());
			ps.setString(2, user.getName());
			ps.setString(3, user.getSurname());
			ps.setString(4, user.getGender());
			ps.setString(5, user.getMobile());
			ps.setString(6, user.getEmail());
			ps.setString(7, user.getPassword());
			
			ps.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
			System.out.println(e.getStackTrace().clone());
			System.out.println(e.getLocalizedMessage());
		}finally {
			close(conn, ps, null);
		}
	}
	
	public void deleteUser(int userId) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		
		try {
			conn = theDataSource.getConnection();
			
			String sql = "delete from user where userId=?";
			
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, userId);
			
			ps.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, ps, null);
		}
	}
	
	//Sphatlo 
	public int userLogin(String email, String password) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int result = 0;
		try {
			conn = theDataSource.getConnection();
			String sql = "select * from user where email=?"
						+ "and password=?";
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, email);
			ps.setString(2, password);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				 result = 1;
			}else {
				result = -1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, ps, null);
		}
		return result;
	}
	
	public List<Sphatlo> getAllSphatlo(){
		List<Sphatlo> list = new ArrayList<>();
		
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from sphatlo";
			conn = theDataSource.getConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			
			while(rs.next()) {
				int sphatloId = rs.getInt("sphatloId");
				String name = rs.getString("name");
				String description = rs.getString("description");
				double price = rs.getFloat("price");
				
				Sphatlo sphatlo = new Sphatlo(sphatloId, name, description, price);
				list.add(sphatlo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(conn, statement, rs);
		}
		return list;
	}
	
public Sphatlo getSphatlo(int sphatloId) {
		
		Sphatlo sphatlo = null;
		
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		
		try {
			conn = theDataSource.getConnection();
			String sql = "select * from sphatlo where sphatloId=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, sphatloId);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				//userId = rs.getInt("userId");
				String name = rs.getString("name");
				String description = rs.getString("description");
				double price = rs.getFloat("price");
				
				sphatlo = new Sphatlo(name, description, price);
			}else {
				throw new Exception("Could not find user id: " + sphatloId);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(conn,ps,rs);
		}
		return sphatlo;
	}

public void addSphatlo(Sphatlo sphatlo) {
	
	Connection conn = null;
	PreparedStatement ps = null;
	
	try {
		conn = theDataSource.getConnection();
		
		String sql = "insert into sphatlo" + "(name,description,price)"
										+"values(?,?,?)";
		ps = conn.prepareStatement(sql);
		
		//ps.setInt(1, user.getUserId());
		ps.setString(1, sphatlo.getName());
		ps.setString(2, sphatlo.getDescription());
		ps.setDouble(3, sphatlo.getPrice());
	
		ps.execute();
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		close(conn, ps, null);
	}
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
