package com.TheOnlineShop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class GetCart extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		
		System.out.println("reached GetCart");
			String username = request.getParameter("username");
		
			System.out.println("Reading cart items for user " + username);

			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "welcome");
				Statement st = conn.createStatement();
				
				ResultSet a = st.executeQuery("SELECT cart_items from users where username='" + username + "';");
				a.next();
				System.out.println("read from DB : " + a);
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
