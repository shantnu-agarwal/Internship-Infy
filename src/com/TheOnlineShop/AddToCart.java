package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddToCart extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		
			String item_id = request.getParameter("id");
			String username = request.getParameter("LoggedIn");
			String timestamp = new Timestamp(System.currentTimeMillis()).toString();
			System.out.println("Adding item ID: " + item_id + " to cart for user: " + username);

			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
				Statement st = conn.createStatement();

				int a = st.executeUpdate(
						"insert into cart(item_ID, quantity, username, cart_time) values('"
								+ item_id + "','" + 1 + "','" + username + "','" + timestamp+ "')");
				
 
				conn.close();
			

				String text = "OK";

				response.setContentType("text/plain");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().write(text);
				
			} catch (Exception e) {
				String text = "NOT OKAY";

				response.setContentType("text/plain");
				response.setCharacterEncoding("UTF-8");
				response.getWriter().write(text);

				System.out.print(e);
				e.printStackTrace();
			} finally {

			}
			
	}
}
