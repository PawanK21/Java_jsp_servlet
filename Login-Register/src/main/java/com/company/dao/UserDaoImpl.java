package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.util.DBUtil;

public class UserDaoImpl implements UserDao {
	@Override
	public boolean isValidUser(String username, String password) {
		String query = "SELECT * FROM employee where username = ? and password =  ?";
		try {
			Connection connection = DBUtil.getConnection();
			PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			ps.setString(2,  password);
			
			ResultSet rs = ps.executeQuery();
			System.out.println("connection build succesfully...");
			return rs.next();	
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("caught an error !");
			return false;
		}
	}
	public static void updateQuery(String newpass, String email) {
		PreparedStatement ps = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		ResultSet rsforuid = null;
		try {
			Connection connection = DBUtil.getConnection();
			String qforuid = ("select uid from employee where username = 'Radha'");
			pstm = connection.prepareStatement(qforuid);
			rsforuid = pstm.executeQuery();
			int uid =  0;
			if(rsforuid.next()) {
				uid = rsforuid.getInt("uid");
			}
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				
				String query = "update employee set password = ? where uid = ?";
				ps = connection.prepareStatement(query);
				ps.setString(1, newpass);
				ps.setInt(2,  uid);
				ps.executeUpdate();
			}
			ps.executeUpdate();
			System.out.println("connection build succesfully...");	
		} catch(SQLException e) {
			e.printStackTrace();
			System.out.println("caught an error !");
		}
	}
}
