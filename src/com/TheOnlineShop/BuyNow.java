package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class BuyNow extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String address = request.getParameter("InputFlat") + " " + request.getParameter("InputArea") + " "
				+ request.getParameter("InputCity") + " " + request.getParameter("InputState") + " "
				+ request.getParameter("InputPincode");
		String id = request.getParameter("InputID");
		String username = request.getParameter("InputUsername");
		String quantity = request.getParameter("InputQuantity");
		String timestamp = new Timestamp(System.currentTimeMillis()).toString();

		System.out.println("Buying product with ID : " + id + " and Q : " + quantity);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
			Statement st = conn.createStatement();
			
			int a = st.executeUpdate("UPDATE inventory set item_quantity = item_quantity - "+quantity + " where item_ID='" + id + "';"); 
			System.out.print("Inventory Updated");
			a = st.executeUpdate(
					"INSERT INTO cart(item_ID,quantity,username,cart_time,transaction_time,transaction_status) values('"+id+"','" + quantity + "','" + username + "','"+ timestamp + "','" + timestamp + "','DONE');");
			
			a = st.executeUpdate(
					"UPDATE users SET address='" + address + "', cart_items=cart_items-" + quantity + " where username='" + username + "';");
			
			System.out.println("Transaction Complete!");
			
			response.sendRedirect("http://localhost:8080/Internship-Infy/Transaction/ConfirmOrder");

			
			

			

			response.getWriter().write("");
		} catch (Exception e) {
			System.out.print(e);
			e.printStackTrace();
		}

	}

}
