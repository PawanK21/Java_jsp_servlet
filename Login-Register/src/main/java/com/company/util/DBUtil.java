package com.company.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static final String url = "jdbc:mysql://localhost:3306/Employees";
	private static final String username = "root";
	private static final String password = "Orien@123456789";
	
	static {
		try {
			//load the MySQL JDBC driver
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws SQLException {
//		System.out.println("Connection is building...");
		return DriverManager.getConnection(url, username, password);
	}
	
}
