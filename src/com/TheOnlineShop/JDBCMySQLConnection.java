package com.TheOnlineShop;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
	 

public class JDBCMySQLConnection {
	private static JDBCMySQLConnection instance = new JDBCMySQLConnection();
	public static final String URL = "jdbc:mysql://localhost/jdbcdb";
	public static final String USER = "root";
	public static final String PASSWORD = "welcome";
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	
	//private constructor
		private JDBCMySQLConnection() {
			try {
				//Step 2: Load MySQL Java driver
				Class.forName(DRIVER_CLASS);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		
		private Connection createConnection() {

			Connection connection = null;
			try {
				//Step 3: Establish Java MySQL connection
				connection = DriverManager.getConnection(URL, USER, PASSWORD);
			} catch (SQLException e) {
				System.out.println("ERROR: Unable to Connect to Database.");
			}
			return connection;
		}	
		
		public static Connection getConnection() {
			return instance.createConnection();
		}
	

}
