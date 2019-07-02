package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubmitAddress extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String address = request.getParameter("InputFlat") + " " + request.getParameter("InputArea") + " "
				+ request.getParameter("InputCity") + " " + request.getParameter("InputState") + " "
				+ request.getParameter("InputPincode");
		String username = request.getParameter("InputUsername");
		String timestamp = new Timestamp(System.currentTimeMillis()).toString();
		
		Connection conn=null,conn2=null;
		ResultSet rs=null;
		Statement st=null,st2=null;
		try {
			address += " " + request.getParameter("InputLandmark");
		} catch (Exception e) {

		}
		System.out.println("Received address as " + address);

		int a;
		try {

			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			st = conn.createStatement();
			conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			st2 = conn2.createStatement();
			rs = st.executeQuery("SELECT item_ID,quantity from cart where username='" + username
					+ "' and transaction_status='NOT DONE';");
			
			while (rs.next()) {
					int quantity = (int) rs.getObject("quantity");
					int item_id = (int) rs.getObject("item_ID");
			
					a = st2.executeUpdate("UPDATE inventory set item_quantity = item_quantity - " + quantity
							+ " where item_ID='" + item_id + "';");		
			}
			
			a = st.executeUpdate(
					"UPDATE users SET address='" + address + "', cart_items=0 where username='" + username + "';");
			a = st.executeUpdate("UPDATE cart set transaction_time='" + timestamp
					+ "', transaction_status='DONE' where username='" + username + "';");
			System.out.println("Transaction Complete.");
			
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.sendRedirect("http://localhost:8080/Internship-Infy/Transaction/ConfirmOrder");

		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();

		}
		finally {
			try {
				st.close();
				st2.close();
				rs.close();
				conn2.close();
				conn.close();
			} catch (SQLException e) {
				System.out.print("Error while closing connections: " + e);
				e.printStackTrace();
			}
			
			
		}

	}
}